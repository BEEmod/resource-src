// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_p1/floor_button_top.mdl"

$bodygroup "default"
{
	studio "portal_button_p1.smd"
}

$cdmaterials "BEE2/models/props_p1/floor_button"

$renamematerial "button" "p1_button"
$texturegroup "skinfamilies"
{
	{
		"p1_button.vmt"
	}
	{
		"p1_button.vmt"
	}
}

$surfaceprop "default"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 0 3.141

// $bbox -62.456 -62.456 -7.358 62.456 62.456 13.64
$bbox -34.5 -34.5 -7 34.5 34.5 13.5

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "portal_button_root" -62.456158 -7.358448 -62.456158 62.456158 13.640243 62.456158
// $hbox 0 "portal_button_top" -31.808338 -4.905849 -31.81344 31.798031 0.000003 31.774923




$sequence "BindPose" "anims\BindPose.smd" {
	fps 24
}

$sequence "up" "anims\up.smd" {
	fps 24
	{ event AE_CL_PLAYSOUND 0 "BEE2.P1.button_up" }
}

$sequence "idledown" "anims\idledown.smd" {
	fps 24
}

$sequence "down" "anims\down.smd" {
	fps 24
	{ event AE_CL_PLAYSOUND 0 "BEE2.P1.button_down" }
}

$collisionjoints "portal_button_physics_noside.smd"
{
	$mass 1967.366
	$inertia 1
	$damping 0
	$rotdamping 0


	$jointconstrain "portal_button_top" x limit 0 0 0
	$jointconstrain "portal_button_top" y limit 0 0 0
	$jointconstrain "portal_button_top" z limit 0 0 0
}

