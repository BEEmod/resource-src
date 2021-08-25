// Created by Crowbar 0.19.0.0

$modelname "BEE2/cube_color/p1_ball.mdl"

$bodygroup "Body"
{
	studio "../p1_sphere/sphere_reference.smd"
}


$cdmaterials "BEE2/models/cube_color/p1_ball/"

$texturegroup "skinfamilies" {
	{ "sphere" }
	{ "sphere" }
	{ "sphere_bounce" }
	{ "sphere_speed" }
}

$surfaceprop "sphere2"

$contents "solid"

$sequence "idle" "../p1_sphere/sphere_anims\idle.smd" {
	fps 30
}

$collisionmodel "../p1_sphere/sphere_physics.smd"
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
	physgun_interactions
		{
		preferred_carryangles 	"0 0 0"
		}
	}
