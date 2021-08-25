// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/retro_companion.mdl"

$bodygroup "default"
{
	studio "underground_weighted_cube_reference.smd"
}

$cdmaterials "BEE2/models/props_ingame/"

$texturegroup "skinfamilies"
{
	{
		"retro_companion.vmt"
	}
	{
		"retro_companion_bounce.vmt"
	}
	{
		"retro_companion_speed.vmt"
	}
}

$surfaceprop "Underground_Cube"

$contents "solid"

$bbox -19 -19 -19 19 19 19


$sequence "ref" "underground_weighted_cube_anims\ref.smd" {
	fps 30
}

$collisionmodel "underground_weighted_cube_physics.smd"
{
	$mass 40
	$inertia 1
	$damping 0.1
	$rotdamping 0
}

$keyvalues
{
	prop_data 
	{
		"base" "Metal.small"
	}
}
