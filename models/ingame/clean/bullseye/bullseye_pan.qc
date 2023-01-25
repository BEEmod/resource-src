
$ModelName "BEE2/props_clean/bullseye_pan.mdl"
$StaticProp

$BodyGroup "default"
	{
	studio "bullseye_pan_ref.smd"
	}

$SurfaceProp "plastic_box"

$Contents "solid"

$CDMaterials "BEE2/models/props_clean/"

$Sequence "idle" {
	"bullseye_pan_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	}

$collisionmodel	"bullseye_pan_ref.smd" 
	{
	$mass 10
	}

$keyvalues
	{
	prop_data
		{
		base        "Cardboard.Small"
		allowstatic 1
		health      10
		"dmg.club"  0
		}
	}

$collisiontext
	{
	break 
		{ 
		model "BEE2/props_clean/bullseye_pan_gib1.mdl"
		fadetime 0.5
		debris 1
		burst -1.0
		}
	break 
		{ 
		model "BEE2/props_clean/bullseye_pan_gib2.mdl"
		fadetime 0.6
		debris 1
		burst -1.0
		}
	break
		{
		model "BEE2/props_clean/bullseye_pan_gib3.mdl"
		fadetime 0.7
		debris 1
		burst -1.0
		}
	break
		{
		model "BEE2/props_clean/bullseye_pan_gib4.mdl"
		fadetime 0.4
		debris 1
		burst -1.0
		}
	break 
		{
		model "BEE2/props_clean/bullseye_pan_gib5.mdl"
		fadetime 0.8
		debris 1
		burst -1.0
		}
	break 
		{ 
		model "BEE2/props_clean/bullseye_pan_gib6.mdl"
		fadetime 0.7
		debris 1
		burst -1.0
		}
	break 
		{ 
		model "BEE2/props_clean/bullseye_pan_gib7.mdl"
		fadetime 0.6
		debris 1
		burst -1.0
		}
	}
