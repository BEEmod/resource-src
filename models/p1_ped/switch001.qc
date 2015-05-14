// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/p1_switch.mdl"

$cdmaterials "models/props_ingame/p1_switch"

$bodygroup "Body"
{
	studio "switch001_reference.smd"
}

$lod 20
{
	replacemodel "switch001_reference.smd" "switch001_reference_lod1.smd"
}

$surfaceprop "metal"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 0 23.542

// $bbox -8.801 -8.801 -0.255 8.801 8.801 47.086

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "Root" -8.411497 -0.001775 -8.411497 8.411497 46.113487 8.411497
// $hbox 0 "Button" -4.586135 0 -4.583005 4.586135 3.321642 4.589263




$sequence "idle" "switch001_anims\idle.smd" {
	fps 30
}

$sequence "down" "switch001_anims\down.smd" {
	fps 30
	{
		event AE_CL_PLAYSOUND 0 "BEE2/p1/btn_down.wav"
	}
}

$sequence "up" "switch001_anims\up.smd" {
	fps 30
	{
		event AE_CL_PLAYSOUND 0 "BEE2/p1/btn_up.wav"
	}
}

$sequence "idle_down" "switch001_anims\idle_down.smd" {
	fps 30
}

$sequence "press" "switch001_anims\press.smd" {
	fps 30
	{
		event AE_CL_PLAYSOUND 0 "BEE2/p1/btn_down.wav"
	}
	{
		event AE_CL_PLAYSOUND 18 "BEE2/p1/btn_up.wav"
	}
}

$collisionmodel "switch001_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}