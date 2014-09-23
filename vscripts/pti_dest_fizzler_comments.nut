// This script is used for the PTI destroyed style, it randomly chooses some fizzler models to break, so they are stuck open. It also adds I/O to make the announcer explain fizzlers when you walk through one.
	// It sets the fizzler/laser field to be drawn in fast relfections (The overgrown goo used is much more reflective).
	// Laserfields have a bunch of ambient_generics spawned along the field to play laser sounds.
//Uses: EntityGroup[0] = fiz_fallback_rl, triggered to add the animation commands if script is not packed (killed by the script before that occurs.)
//      @fiz_sp_prename, sparks near the model which are used if malfunctioning
//      @fiz_filter, a filter which triggers the quote if a player touches a fizzler.
//		EntityGroup[1] = laser_maker, spawns @laser_snd_prename to play from the laserfield brushes.
//		EntityGroup[2] = paint_maker, spawns @fiz_part_prename to add more paint fizzler particles if needed
//      add to entity in global_ents
EntFireByHandle(EntityGroup[0],"Kill","",0.00,null,null); // stop the fallback io from firing (if no script then this will add animation commands)
sp_index <- 0; //current targetname suffix for spark set.
las_index <- 0; // same but for laser sounds.
part_index <- 0; // same for paint fizzler particles
SOUND_NAME <- "@laser_snd_prename"; // Name of the laserfield sound.
SOUND_DIST <- 256; // Distance between laser sound entities.
PART_DIST <- 128; // Distance between each particle entity.
SPARK_NAME <- "@fiz_sp_prename"; // Name of the sparks in the model instance.
PART_NAME <-  "@fiz_part_prename"; // Name of paint fizzler particle effects

function fixFizzler()
{
		// Look for the barrier models and randomly break some of them
	printl("Fizzler Script Started");
	local ent = Entities.FindByName(null, "barrierHazard*"); // loop through fizzler entities
	while(ent!=null)
	{
		printl("name =" + ent.GetName() + ", class=" + ent.GetClassname());
		if(ent.GetClassname()=="prop_dynamic" && ent.GetModelName().find("fizzler") != null) // is it the fizzler side model?
		{
			local v=RandomInt(1,3);
			printl(v);
			if(v==1) // 1 in 3 are broken
			{
			sp_index++;
			local sp = Entities.FindByClassnameWithin(null,"env_spark",ent.GetOrigin(),50);
				while (sp!=null)
				{
				if(sp.GetName()== SPARK_NAME)
					EntFireByHandle(sp,"AddOutput","targetname fiz_sp_" + sp_index,0,null,null);
					EntFireByHandle(sp,"StartSpark","",0,null,null);
				sp=Entities.FindByClassnameWithin(sp,"env_spark",ent.GetOrigin(),50)
				}
			EntFireByHandle(ent,"AddOutput","OnUser1 fiz_sp_" + sp_index + ":SparkOnce::"+(RandomInt(0,25)/10.00)+":-1",0.00,null,null);
			EntFireByHandle(ent,"AddOutput","OnUser2 fiz_sp_" + sp_index + ":SparkOnce::"+(RandomInt(0,25)/10.00)+":-1",0.00,null,null);
			EntFireByHandle(ent,"SetAnimation","idle",0,null,null);
			}
			else // functioning
			{
			EntFireByHandle(ent,"AddOutput","OnUser1 !self:SetAnimation:close:0:-1",0.00,null,null);
			EntFireByHandle(ent,"AddOutput","OnUser2 !self:SetAnimation:open:0:-1",0.00,null,null);
			
			local sp=Entities.FindByClassnameWithin(null,"env_spark",ent.GetOrigin(),50);
				while (sp!=null)
				{
				if(sp.GetName()==SPARK_NAME)
					EntFireByHandle(sp,"Kill","",0.00,null,null); // get rid of extra spark entities
				sp=Entities.FindByClassnameWithin(sp,"env_spark",ent.GetOrigin(),50)
				}
			}
		}
		else if(ent.GetClassname() == "trigger_portal_cleanser" || ent.GetClassname() == "func_brush") 
		{
			EntFireByHandle(ent,"EnableDrawInFastReflection","",0.00,null,null); // Make the fields render in goo
			if(ent.GetClassname() == "trigger_portal_cleanser")
			{
				EntFireByHandle(ent,"AddOutput","OnStartTouch @fiz_filter:TestActivator::0:-1",0.00,null,null); //Add hook for fizzler line
			}
			else { // Laserfield
				// Spawn a copy of the sound effect at the origin of the brush.
				addLaserFx(ent)
			}
		}
		else if(ent.GetClassname() == "trigger_paint_cleanser") // Paint fizzler
		{
			addPaintPart(ent) // Add extra particle systems if needed
		}
		ent = Entities.FindByName(ent, "barrierHazard*");
	}
	printl("Fizzlers corrupted!");
}

function addLaserFx(field) //Most of this is borrowed from HMW's code here: 
{    					  // http://forums.thinkingwithportals.com/mapping-help/self-painting-light-bridges-t9626.html
						 // Create copies of the sound along the length of the bridge

    local position = field.GetOrigin();
    local angles = Entities.FindByName(null,field.GetName().slice(0,-6) + "_modelStart-mdl").GetAngles();
			// use the orientation of the fizzler model to decide the direction the fizzler field extends in
    local step = rotate(Vector(0, SOUND_DIST, 0), angles);
	las_index++;
	local branch = field.GetName().slice(0,-6) + "-branch_toggle"; // figure out the name of the logic_branch for the laserfield by replacing the "_brush" with "-branch_toggle"
	
	EntFire(branch,"AddOutput", "OnTrue las_snd_" + las_index + ":PlaySound::0:-1",0.00,null);
	EntFire(branch,"AddOutput","OnFalse las_snd_" + las_index + ":StopSound::0:-1",0.00,null); // Add the required play/stop outputs
	EntFire(branch,"AddOutput", "OnTrue !self:FireUser2::0:-1",0.00,null);
	EntFire(branch,"AddOutput","OnFalse !self:FireUser1::0:-1",0.00,null);
	
	// Find the bounding box coordinate whose absolute value is
    // bigger than 32. This is the field length.
    // All other values are set to 0 by the functions below,
    // so all that we need to do is add them all up.
    local length = check_vector(field.GetBoundingMins()) +
                   check_vector(field.GetBoundingMaxs());
	if ( length == 128)
		{ // 128*128 fizzler, only spawn one.
		position = field.GetOrigin();
		}
	else
		{
		position += rotate(Vector(0, -(length-SOUND_DIST)/2, 0), angles); // Start on one side of the fizzler
		length -= SOUND_DIST // Make the sounds offset to the center, so we don't have them hanging on the ends.
		}
		
    while (length > 0) {
        EntityGroup[1].SpawnEntityAtLocation(position, angles);
		local snd = Entities.FindByNameWithin(null, SOUND_NAME , position, 8); // get a handle to the sound we just spawned
        EntFireByHandle(snd,"AddOutput","targetname las_snd_" + las_index,0,null,null);
        position += step;
        length -= SOUND_DIST;
    }
}

function addPaintPart(field)// Create extra paint particle effects
{
    local position = field.GetOrigin();
    local angles = Entities.FindByName(null,field.GetName().slice(0,-6) + "_modelStart-pfx").GetAngles();
			// use the orientation of the fizzler effect to decide the direction the fizzler field extends in
    local step = rotate(Vector(PART_DIST, 0, 0), angles);
	part_index++;
	local branch = field.GetName().slice(0,-6) + "-branch_toggle"; // figure out the name of the logic_branch for the laserfield by replacing the "_brush" with "-branch_toggle"
	
	// Find the bounding box coordinate whose absolute value is
    // bigger than 32. This is the field length.
    // All other values are set to 0 by the functions below,
    // so all that we need to do is add them all up.
    local length = check_vector(field.GetBoundingMins()) +
                   check_vector(field.GetBoundingMaxs());
	if ( length < 300)
		{ // Fizzler is small enough that extra aren't necessary.
		return;
		}
	else
		{
		length -= 256; // compensate for original particles
		position += rotate(Vector(-(length-PART_DIST)/2, 0, 0), angles); // Start on one side of the fizzler
		length -= SOUND_DIST // Make the systems offset to the center, so that they face the right way.
		}
		
	EntFire(branch,"AddOutput", "OnTrue paint_part_" + part_index + ":Start::0:-1",0.00,null);
	EntFire(branch,"AddOutput","OnFalse paint_part_" + part_index + ":Stop::0:-1",0.00,null); // Add the required start/stop outputs
		
    while (length > 0) {
        EntityGroup[2].SpawnEntityAtLocation(position, angles);
		local part = Entities.FindByNameWithin(null, PART_NAME , position, 8); // get a handle to the system we just spawned
        EntFireByHandle(part,"AddOutput","targetname paint_part_" + part_index,0,null,null);
        position += step;
        length -= SOUND_DIST;
    }
}

function make_rot_matrix(angles)
{
    // Return a 3x3 rotation matrix for the given pitch-yaw-roll angles.
    // (letters are swapped to get roll-yaw-pitch)
    //
    // format: / a b c \
    //         | d e f |
    //         \ g h k /


    // Determine sine and cosine of each angle.
    // Angles must be converted to radians for use with these functions.

    local sin_x = sin(-angles.z / 180 * PI);
    local cos_x = cos(-angles.z / 180 * PI);
    local sin_y = sin(-angles.x / 180 * PI);
    local cos_y = cos(-angles.x / 180 * PI);
    local sin_z = sin(-angles.y / 180 * PI);
    local cos_z = cos(-angles.y / 180 * PI);

    return {

        a = cos_y * cos_z,
            b = -sin_x * -sin_y * cos_z + cos_x * sin_z,
                c = cos_x * -sin_y * cos_z + sin_x * sin_z,

        d = cos_y * -sin_z,
            e = -sin_x * -sin_y * -sin_z + cos_x * cos_z,
                f = cos_x * -sin_y * -sin_z + sin_x * cos_z,

        g = sin_y,
            h = -sin_x * cos_y,
                k = cos_x * cos_y,
   }
}


function rotate(point, angles)
{
    // Rotate point about the origin by angles and return the result.
    local mx = make_rot_matrix(angles);
    return Vector(point.x * mx.a + point.y * mx.b + point.z * mx.c,
                  point.x * mx.d + point.y * mx.e + point.z * mx.f,
                  point.x * mx.g + point.y * mx.h + point.z * mx.k);
}

function check_vector(v)
{
    // Check one set of coordinates for a value bigger than 128.

    return check_value(v.x) +
           check_value(v.y) +
           check_value(v.z);
}


function check_value(v)
{
    // Return coordinate number if its absolute value is bigger than 128.
    // Otherwise, return 0.

    v = fabs(v);
    if (v > 128) {
        return v;
    }
    else {
        return 0;
    }
}