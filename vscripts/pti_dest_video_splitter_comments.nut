// --------------------------------------------------------
// TeamSpen210: modified version of video_splitter to work with overgrown maps and fit Cave's PTI dialogue
// This version has all the comments, the normal one has been shrunk to have a smaller filesize.
// --------------------------------------------------------

/* Original SP videos
	{ map = "sp_a1_intro1", arrival = "", departure = "" },
	{ map = "sp_a1_intro2", arrival = "", departure = "" },
	{ map = "sp_a1_intro3", arrival = "animalking.bik", departure = "animalking.bik", typeOverride = 11  },
	{ map = "sp_a1_intro4", arrival = "exercises_horiz.bik", departure = "exercises_horiz.bik", typeOverride = 10 },
	{ map = "sp_a1_intro5", arrival = "exercises_vert.bik", departure = "exercises_vert.bik", typeOverride = 9 },
	{ map = "sp_a1_intro6", arrival = "plc_blue_vert.bik", departure = "plc_blue_vert.bik", typeOverride = 9 },
	{ map = "sp_a1_intro7", arrival = "plc_blue_horiz.bik", departure = "", typeOverride = 4 },
	{ map = "sp_a2_intro", arrival = "", departure = "plc_blue_horiz.bik", typeOverride = 1 },
	{ map = "sp_a2_laser_intro",	arrival = "laser_portal.bik", departure = "laser_portal.bik", typeOverride = 12  },
	{ map = "sp_a2_laser_stairs",	arrival = "laser_portal.bik", departure = "laser_portal.bik", typeOverride = 12 },
	{ map = "sp_a2_dual_lasers",	arrival = "laser_portal.bik", departure = "laser_portal.bik", typeOverride = 12 },
	{ map = "sp_a2_laser_over_goo", arrival = "aperture_appear_vert.bik", departure = "aperture_appear_vert.bik", typeOverride = 9 },
	{ map = "sp_a2_catapult_intro", arrival = "faithplate.bik", departure = "faithplate.bik", typeOverride = 6 },
	{ map = "sp_a2_trust_fling",	arrival = "faithplate.bik", departure = "faithplate.bik", typeOverride = 6 },
	{ map = "sp_a2_pit_flings",	arrival = "aperture_appear_vert.bik", departure = "aperture_appear_vert.bik", typeOverride = 9 },
	{ map = "sp_a2_fizzler_intro",	arrival = "fizzler.bik", departure = "fizzler.bik", typeOverride = 6 },
	{ map = "sp_a2_sphere_peek",	arrival = "aperture_appear_vert.bik", departure = "aperture_appear_vert.bik", typeOverride = 9 },
	{ map = "sp_a2_ricochet",	arrival = "aperture_appear_vert.bik", departure = "aperture_appear_vert.bik", typeOverride = 9 },
	{ map = "sp_a2_bridge_intro",	arrival = "hard_light.bik", departure = "hard_light.bik", typeOverride = 12 },
	{ map = "sp_a2_bridge_the_gap", arrival = "hard_light.bik", departure = "hard_light.bik", typeOverride = 6 },
	{ map = "sp_a2_turret_intro",	arrival = "turret_exploded_grey.bik", departure = "", typeOverride = 6 },
	{ map = "sp_a2_laser_relays",	arrival = "", departure = "aperture_appear_vert.bik", typeOverride = 9 },
	{ map = "sp_a2_turret_blocker",	arrival = "turret_exploded_grey.bik", departure = "turret_exploded_grey.bik", typeOverride = 6 },
	{ map = "sp_a2_laser_vs_turret",arrival = "turret_colours_type.bik", departure = "turret_colours_type.bik", typeOverride = 6 },
	{ map = "sp_a2_pull_the_rug",	arrival = "aperture_appear_vert.bik", departure = "aperture_appear_vert.bik", typeOverride = 9 },
	{ map = "sp_a2_column_blocker", arrival = "turret_dropin.bik", departure = "turret_dropin.bik", typeOverride = 6 },
	{ map = "sp_a2_laser_chaining", arrival = "turret_colours_type.bik", departure = "turret_colours_type.bik", typeOverride = 6 },
	{ map = "sp_a2_triple_laser",	arrival = "aperture_appear_vert.bik", departure = "aperture_appear_vert.bik", typeOverride = 9 },
	{ map = "sp_a2_bts1",			arrival = "aperture_appear_vert.bik", departure = "", typeOverride = 9 },
	{ map = "sp_a4_intro",			arrival = "", departure = "plc_blue_horiz.bik", typeOverride = 6 },
	{ map = "sp_a4_tb_intro",		arrival = "exercises_horiz.bik", departure = "exercises_horiz.bik", typeOverride = 6 },
	{ map = "sp_a4_tb_trust_drop",	arrival = "plc_blue_horiz.bik", departure = "plc_blue_horiz.bik", typeOverride = 6 },
	{ map = "sp_a4_tb_wall_button",	arrival = "", departure = "" },
	{ map = "sp_a4_tb_polarity",	arrival = "exercises_horiz.bik", departure = "exercises_horiz.bik", typeOverride = 6 },
	{ map = "sp_a4_tb_catch",		arrival = "plc_blue_horiz.bik", departure = "plc_blue_horiz.bik", typeOverride = 6 },
	{ map = "sp_a4_stop_the_box",	arrival = "bluescreen.bik", departure = "bluescreen.bik", typeOverride = 14 },
	{ map = "sp_a4_laser_catapult",	arrival = "bluescreen.bik", departure = "bluescreen.bik", typeOverride = 14 },
	{ map = "sp_a4_laser_platform",	arrival = "bluescreen.bik", departure = "", typeOverride = 14 },
	{ map = "sp_a4_speed_tb_catch",	arrival = "", departure = "bluescreen.bik", typeOverride = 14 },
	{ map = "sp_a4_jump_polarity",	arrival = "bluescreen.bik", departure = "bluescreen.bik", typeOverride = 14 },
	{ map = "sp_a4_finale1",		arrival = "bluescreen.bik", departure = "" }*/

RandomVideos <- // Original set of videos
			[
/*0*/		"laser_danger_vert",
/*1*/		"fizzler",
/*2*/		"laser_portal",
/*3*/		"turret_colours_type",
/*4*/		"bluescreen",
/*5*/		"community_bg1",
/*6*/		"plc_blue_horiz",
/*7*/		"exercises_vert",
/*8*/		"plc_blue_vert",
/*9*/		"faithplate",
/*10*/		"aperture_logo",
/*11*/		"aperture_appear_vert",
/*12*/		"coop_orangebot_load",
/*13*/		"turret_exploded_grey",
/*14*/		"exercises_horiz",
/*15*/		"laser_danger_horiz",
/*16*/		"animalking",
/*17*/		"turret_dropin",
/*18*/		"coop_bots_load",
/*19*/		"coop_bots_load_wave",
/*20*/		"coop_bluebot_load",
/*21*/		"hard_light",
/*22*/		"aperture_appear_horiz",
			]
CaveVideos <-  // Matches Cave's lines
[
	5,			//"community_bg1",
	7,			//"exercises_vert",
	6,			//"plc_blue_vert",
	16,			//"animalking",
	22,			//"aperture_appear_horiz",
	6,			//"plc_blue_horiz",
	22,			//"aperture_appear_horiz",
	14,			//"exercises_horiz",
	10,			//"aperture_logo",
	22,			//"aperture_appear_horiz",
	19,			//"coop_bots_load_wave", // dancing
	17,			//"turret_dropin",
	3,			//"turret_colours_type",
	21,			//"hard_light", // faster than light
	3,			//"turret_colours_type",
	9,			//"faithplate", 
	1,			//"fizzler", 
	10,			//"aperture_logo", // mantis
	"sp_a5_credits", // space
	"sp_a5_credits",
	"sp_a5_credits",
	10,			//"aperture_logo",
	15,			//"laser_danger_horiz",
	16,			//"animalking",
	3,			//"turret_colours_type", // telekinesis
	14,			//"exercises_horiz",
	6,			//"plc_blue_horiz",
	16,			//"animalking", // mantis 2
	9,			//"faithplate",
	9,			//"faithplate",
	18,			//"coop_bots_load", // philanthropist
	13,			//"turret_exploded_grey", 
	5,			//"community_bg1",
	"sp_credits_bg", // comp cave
	13,			//"turret_exploded_grey",
	"sp_credits_bg",
	2,			//"laser_portal",
	17,			//"turret_dropin",
	19,			//"coop_bots_load_wave",
	10,			//"aperture_logo",
	11,			//"aperture_appear_vert"
	21,			//"hard_light",
	12,			//"coop_orangebot_load",
	14,			//"exercises_horiz",
	18,			//"coop_bots_load",
	16,			//"animalking",
	16,			//"animalking", // cat cave
	10,			//"aperture_logo",
	21,			//"hard_light", // pure light
	6,			//"plc_blue_horiz",
	5,			//"community_bg1",
	5,			//"community_bg1",
	16,			//"animalking",
	20,			//"coop_bluebot_load",
	17,			//"turret_dropin",
	9,			//"faithplate", // peanut
	22,			//"aperture_appear_horiz",
	7,			//"exercises_vert",
	17,			//"turret_dropin",
	20,			//"coop_bluebot_load",
	2,			//"laser_portal", // portals
	1,			//"fizzler",
	2,			//"laser_portal",
	5,			//"community_bg1",
	16,			//"animalking", // godzilla
	9,			//"faithplate", 
	3,			//"turret_colours_type",
	21,			//"hard_light",
	"sp_credits_bg",
	"sp_credits_bg",
	10,			//"aperture_logo",
	0,			//"laser_danger_vert",
	12,			//"coop_orangebot_load",
	9,			//"faithplate", // gas-finding
	"sp_a5_credits",
	"coop_bts_radar_1",
	// 7 more, let them be random
]

ARRIVAL_VIDEO <- 0
DEPARTURE_VIDEO <- 1
ARRIVAL_DESTRUCTED_VIDEO <- 2
DEPARTURE_DESTRUCTED_VIDEO <- 3

chosenVideo <- ""

EntFire("@elev_arrival_script","Kill","",0); // Remove the original scripts, allowing them to be used instead if this script isn't packed.
EntFire("@elev_departure_script","Kill","",0);

function Precache()
{
	if( "PrecachedVideos" in this )
	{
		// don't do anything
	}
	else
	{
		// If we're in a community map, pick a random one
		local communityMapIndex = GetMapIndexInPlayOrder();
		if ( communityMapIndex != -2 )
		{
			if ( communityMapIndex == -1 )
			{
				communityMapIndex = GetNumMapsPlayed(); 
			}
			// the map index is actually the same as the dialogue that's chosen, so match vids to Cave if possible.
			if(communityMapIndex < 76)
				{
				local vid = CaveVideos[communityMapIndex];
				if (typeof vid=="integer") // to decrease size, just store the index
					{
					chosenVideo = "media\\" + RandomVideos[vid] + ".bik"
					}
				else // Some vids only play with Cave dialogue, choose them if needed
					{
					chosenVideo = "media\\" + vid + ".bik"
					}
				printl("Overriding with Cave video:" + chosenVideo)
				}
			else // otherwise choose randomly
				{
				chosenVideo = "media\\" + RandomVideos[communityMapIndex % RandomVideos.len()] + ".bik";
				}
		}
		else
		{
		chosenVideo = "media\\" + RandomVideos[RandomInt(0,RandomVideos.len())] + ".bik"; // For playtesting
		}
		printl( "Precaching movie: " + chosenVideo )
		PrecacheMovie( chosenVideo )
	}
}

//============================

function StopArrivalVideo(width,height)
{
	EntFire("@arrival_video_master", "Disable", "", 0)
	EntFire("@arrival_video_master", "killhierarchy", "", 1.0)
	StopVideo(ARRIVAL_VIDEO,width,height)
}

function StopDepartureVideo(width,height)
{
	EntFire("@departure_video_master", "Disable", "", 0)
	EntFire("@departure_video_master", "killhierarchy", "", 1.0)
	StopVideo(DEPARTURE_VIDEO,width,height)
}

function StopVideo(videoType,width,height)
{
	for(local i=0;i<width;i+=1)
	{
		for(local j=0;j<height;j+=1)
		{
			local panelNum = 1 + width*j + i;
			local signName
			
			if (videoType == DEPARTURE_VIDEO || videoType == DEPARTURE_DESTRUCTED_VIDEO )
			{
				signName = "@departure_sign_" + panelNum;
			}
			else
			{
				signName = "@arrival_sign_" + panelNum;
			}
			
			EntFire(signName, "Disable", "", 0)
			EntFire(signName, "killhierarchy", "", 1.0)
		}
	}
}

function StartArrivalVideo(width,height)
{
	StartDestructedArrivalVideo(width,height)
	
//	EntFire("@arrival_video_master", "Enable", "", 0)
//	StartVideo(ENTRANCE_VIDEO,width,height)
}

function StartDepartureVideo(width,height)
{
	StartDestructedDepartureVideo(width,height)

//	EntFire("@departure_video_master", "Enable", "", 0)
//	StartVideo(DEPARTURE_VIDEO,width,height)
}

function StartDestructedArrivalVideo(width,height)
{
	/* local videoName = ""
	// If we're in a community map, pick a random one
	local communityMapIndex = GetMapIndexInPlayOrder()
	if ( communityMapIndex != -2 )
	{	
		if ( communityMapIndex == -1 )
		{
			communityMapIndex = GetNumMapsPlayed()
		}
		videoName = "media\\" + RandomVideos[communityMapIndex % RandomVideos.len()]
		// reprintl("Setting arrival movie to " + videoName )
	} 
	else
	{ 
	videoName=chosenVideo
	}*/
	// If we have something to play, do so
	//if ( videoName != "" )
	//{
		printl("Setting arrival movie to " + chosenVideo )
		EntFire("@arrival_video_master", "SetMovie", chosenVideo, 0)
	
		EntFire("@arrival_video_master", "Enable", "", 0.1)
		StartVideo(ARRIVAL_DESTRUCTED_VIDEO, width, height)
	//}
}

function StartDestructedDepartureVideo(width,height)
{
	/*local videoName = "";

	// If we're in a community map, pick a random one
	local communityMapIndex = GetMapIndexInPlayOrder()
	if ( communityMapIndex != -2 )
	{	
		if ( communityMapIndex == -1 )
		{
			communityMapIndex = GetNumMapsPlayed()
		}
		videoName = "media\\" + RandomVideos[communityMapIndex % RandomVideos.len()]
		// reprintl("Setting arrival movie to " + videoName )
	}
	else {
	videoName=chosenVideo
	}*/	
	//if ( videoName != "" )
	//{
		printl("Setting departure movie to " + chosenVideo )
		EntFire("@departure_video_master", "SetMovie", chosenVideo, 0)
		
		EntFire("@departure_video_master", "Enable", "", 0.1)
		//chosenVideo=videoName
		StartVideo(DEPARTURE_DESTRUCTED_VIDEO, width, height)
	//}
}

function StartVideo(videoType,width,height)
{
	local videoScaleType = RandomInt(1,13) // since the map's destroyed, choose a random scaling type. We don't care if it gets distorted, that makes sense.
	local randomDestructChance = RandomInt(30,80)
	if(chosenVideo == "media\\bluescreen.bik")
	{
		videoScaleType=14 // make this appear correctly
	}
	/*if( videoType == ARRIVAL_DESTRUCTED_VIDEO || videoType == DEPARTURE_DESTRUCTED_VIDEO )
	{
		videoScaleType = RandomInt(1,5)
	}
	else
	{
		videoScaleType = RandomInt(6,7)
	}
		
	local mapName = GetMapName()
	foreach (index, level in ElevatorVideos)
	{
		if (level.map == mapName)
		{
			if ("typeOverride" in level)
			{
				videoScaleType = level.typeOverride
			}
			
			if ("destructChance" in level)
			{
				randomDestructChance = level.destructChance
			}
		}
	}
	*/
	
	for(local i=0;i<width;i+=1)
	{
		for(local j=0;j<height;j+=1)
		{
			local panelNum = 1 + width*j + i
			local signName
			
			if (videoType == DEPARTURE_VIDEO || videoType == DEPARTURE_DESTRUCTED_VIDEO )
			{
				signName = "@departure_sign_" + panelNum
			}
			else
			{
				signName = "@arrival_sign_" + panelNum
			}		
					
			{
				if( randomDestructChance > RandomInt(0,100) )
				{
					EntFire(signName, "Kill", "", 0)
					continue
				}
				
				EntFire(signName, "SetUseCustomUVs", 1, 0)
				
				local uMin = (i+0.0001)/(width)
				local uMax = (i+1.0001)/(width)
				local vMin = (j+0.0001)/(height)
				local vMax = (j+1.0001)/(height)
				
				if( videoScaleType == 0 /*full elevator*/ ) 				
				{
				
				}				
				else if( videoScaleType == 1 /*stretch*/ ) 
				{
					uMin = 1.0 - (1.0-uMin)*(1.0-uMin)*(1.0-uMin)
					uMax = 1.0 - (1.0-uMax)*(1.0-uMax)*(1.0-uMax)
				}				

				else if( videoScaleType == 2 /*Mirror*/ ) 
				{					
					uMin = 4*(1.0-uMin)*uMin
					uMax = 4*(1.0-uMax)*uMax					
				}				
				
				else if( videoScaleType == 3 /*Ouroboros*/ )
				{
					uMin = ((i%12)+0.0001)/12
					uMax = ((i%12)+1.0001)/12

					if( ((i)%2) == 1 )
					{
						local temp = uMin
						uMin = uMax
						uMax = temp
					}
				}
				
				else if( videoScaleType == 4 /*Upside down*/ )
				{
					vMin = 0.99999
					vMax = 0.00001
					
					uMin = ((i%3)+0.0001)/3
					uMax = ((i%3)+1.0001)/3					
				}
				
				else if( videoScaleType == 5 /*Tiled*/ )
				{
					vMin = 0.00001
					vMax = 0.99999
					
					uMin = ((i%3)+0.0001)/3
					uMax = ((i%3)+1.0001)/3
				}

				else if( videoScaleType == 6 /*Tiled Really Big*/ )
				{
					uMin = ((i%8)+0.0001)/8
					uMax = ((i%8)+1.0001)/8
				}

				else if( videoScaleType == 7 /*Tiled Big*/ )
				{
					uMin = ((i%12)+0.0001)/12
					uMax = ((i%12)+1.0001)/12
				}

				else if( videoScaleType == 8 /*Tiled Single*/ )
				{
					uMin = 0.0001
					uMax = 0.9999
					vMin = 0.0001
					vMax = 0.9999
				}

				else if( videoScaleType == 9 /*Tiled Double*/ )
				{
					uMin = ((i%2)+0.0001)/2
					uMax = ((i%2)+1.0001)/2
				}

				else if( videoScaleType == 10 /*Two by two*/ )
				{
					vMin = 0.00001
					vMax = 0.99999
					
					uMin = ((i%2)+0.0001)/2
					uMax = ((i%2)+1.0001)/2
				}

				else if( videoScaleType == 11 /*Tiled off 1*/ )
				{
					vMin = 0.00001
					vMax = 0.99999
					
					uMin = (((i+1)%3)+0.0001)/3
					uMax = (((i+1)%3)+1.0001)/3
				}

				else if( videoScaleType == 12 /*Tiled 2x4*/ )
				{
					uMin = ((i%6)+0.0001)/6
					uMax = ((i%6)+1.0001)/6
				}

				else if( videoScaleType == 13 /*Tiled Double - with two blank*/ )
				{
					if( ((i)%4) < 2 )
					{
						uMin = ((i%2)+0.0001)/2
						uMax = ((i%2)+1.0001)/2
					}
					else
					{
						uMin = 0.97
						uMax = 0.97
					}
				}

				else if( videoScaleType == 14 /*bluescreen*/ )
				{
					if( (i%8) >= 1 &&  
						(i%8) < 7 )
					{
						uMin = (((i-1)%8)+0.0001)/6
						uMax = (((i-1)%8)+1.0001)/6
					}
					else
					{
						uMin = 0.97
						uMax = 0.97
					}
				}
								 
				EntFire(signName, "SetUMin", uMin, 0)
				EntFire(signName, "SetUMax", uMax, 0)
				EntFire(signName, "SetVMin", vMin, 0)
				EntFire(signName, "SetVMax", vMax, 0)

				EntFire(signName, "Enable", "", 0.1)
				
//				printl(signName + " " + uMin + " " + uMax + " " + vMin + " " + vMax )
			}
		}
	}
}
