$ModelName "BEE2/props_ingame/faith_plate_toggle.mdl"

$BodyGroup "Body"
{
	studio "faith_plate_toggle_reference.smd"
}
 
$MostlyOpaque

$texturegroup "skinfamilies"
{
	{
		"faith_plate"
		"faith_plate_glass"
	}
	{
		"faith_plate_error"
		"faith_plate_glass"
	}
	{
		"faith_plate_rusty"
		"faith_plate_rusty_glass"
	}
	{
		"faith_plate_rusty_error"
		"faith_plate_rusty_glass"
	}
}

$cdmaterials "models/props/" "BEE2/models/props_ingame/"

$SurfaceProp "metal"

$origin 0 0 8

$attachment "light" "faith_pate_paddle_alter_direction" 22 1 1 rotate 270 180 0

$Sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "angled" {
	"anims\angled.smd"
	{
		event AE_CL_PLAYSOUND 0 "World.CatapultLaunch"
	}
}

$Sequence "straightup" {
	"anims\straightup.smd"
	{
		event AE_CL_PLAYSOUND 0 "World.CatapultLaunch"
	}
}
