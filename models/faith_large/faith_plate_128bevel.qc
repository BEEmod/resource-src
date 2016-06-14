$modelname "BEE2/props_ingame/faith_plate_128.mdl"

$bodygroup "default"
{
	studio "faith_plate_128bevel_reference.smd"
}

$cdmaterials "models/props/" "BEE2/models/props_ingame/"

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

$attachment "light_l" "faithplatebone_3" 20 0 1.5 rotate 0 0 0
$attachment "light_c" "faithplatebone_28" 20 0 1.5 rotate 0 0 0
$attachment "light_r" "faithplatebone_15" 20 0 1.5 rotate 0 0 0

$surfaceprop "no_decal"

$contents "solid"

$bbox -64 -64 -64 64 64 0

$sequence "idle" "faith_plate_128bevel_anims\BindPose.smd" {
	fps 30
}

$sequence "catapult" "faith_plate_128bevel_anims\faith_plate_128bevel_straightup.smd" {
	fps 24
	{
		event AE_CL_PLAYSOUND 0 "World.CatapultLaunch"
	}
}