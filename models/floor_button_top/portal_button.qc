// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/floor_button_just_top.mdl"

$bodygroup "default"
{
	studio "portal_button_reference.smd"
}

$cdmaterials "models\props\"

$texturegroup "skinfamilies"
{
	{
		"portal_button_blue.vmt"
	}
	{
		"portal_button_blue.vmt"
	}
}

$surfaceprop "default"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 0 3.141

// $bbox -62.456 -62.456 -7.358 62.456 62.456 13.64

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "portal_button_root" -62.456158 -7.358448 -62.456158 62.456158 13.640243 62.456158
// $hbox 0 "portal_button_top" -31.808338 -4.905849 -31.81344 31.798031 0.000003 31.774923




$sequence "BindPose" "portal_button_anims\BindPose.smd" {
	fps 24
}

$sequence "up" "portal_button_anims\up.smd" {
	fps 24
	{ event AE_CL_PLAYSOUND 0 "BEE2/p1/btn_up.wav" }
}

$sequence "idledown" "portal_button_anims\idledown.smd" {
	fps 24
}

$sequence "down" "portal_button_anims\down.smd" {
	fps 24
	{ event AE_CL_PLAYSOUND 0 "BEE2/p1/btn_down.wav" }
}

$collisionjoints "portal_button_physics.smd"
{
	$mass 1967.366
	$inertia 1
	$damping 0
	$rotdamping 0


	$jointconstrain "portal_button_top" x limit 0 0 0
	$jointconstrain "portal_button_top" y limit 0 0 0
	$jointconstrain "portal_button_top" z limit 0 0 0
}

