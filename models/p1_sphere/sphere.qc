// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/p1_ball.mdl"

$bodygroup "Body"
{
	studio "sphere_reference.smd"
}


$cdmaterials "BEE2\models\props_ingame\p1_ball"

$texturegroup "skinfamilies"
{
	{
		"sphere.vmt"
	}
	{
		"sphere.vmt"
	}
	{
		"sphere_bounce.vmt"
	}
	{
		"sphere_speed.vmt"
	}
}

$surfaceprop "sphere2"

$contents "solid"

$sequence "idle" "sphere_anims\idle.smd" {
	fps 30
}

$collisionmodel "sphere_physics.smd"
{
	$mass 75
	$inertia 1
	$damping 0.35
	$rotdamping 0
}


$keyvalues
{
	prop_data 
	{
		"base" "Metal.large"
	}
}
