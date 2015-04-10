$modelname "BEE2/ingame/faith_plate_128.mdl"

$bodygroup "default"
{
	studio "faith_plate_128bevel_reference.smd"
}

$cdmaterials "models\props\"

$texturegroup "skinfamilies"
{
	{
		"faith_plate"
	}
	{
		"faith_plate_error"
	}
}

$surfaceprop "no_decal"

$collisionmodel "faith_plate_physics"

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