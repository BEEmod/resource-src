// Created by Crowbar 0.19.0.0

$modelname "props_ingame/p1_ball.mdl"

$bodygroup "Body"
{
	studio "sphere_reference.smd"
}


$cdmaterials "models\props_ingame\p1_ball"

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

// Model uses material "sphere.vmt"
// Model uses material "sphere_lit01.vmt"
// Model uses material "sphere_lit03.vmt"
// Model uses material "sphere_lit04.vmt"
// Model uses material "sphere_lit05.vmt"
// Model uses material "sphere_lit06.vmt"
// Model uses material "sphere_lit07.vmt"
// Model uses material "sphere_lit08.vmt"
// Model uses material "sphere_lit09.vmt"
// Model uses material "sphere_lit10.vmt"

$surfaceprop "sphere"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 0 0

// $bbox -20.25 -20.25 -20.25 20.25 20.25 20.25

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "Sphere_Reference" -20 -20 -20 20 20 20




$sequence "idle" "sphere_anims\idle.smd" {
	fps 30
}

$collisionmodel "sphere_physics.smd"
{
	$mass 85
	$inertia 1
	$damping 0.1
	$rotdamping 0
	$concave

}


$keyvalues
{
	prop_data 
	{
		"base" "Metal.large"
	}
}
