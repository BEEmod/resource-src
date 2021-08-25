// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_p1/switch.mdl"

$cdmaterials "BEE2/models/props_p1/p1_switch"

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

$bbox -8 -8 -0 8 8 56

$sequence "idle" "switch001_anims\idle.smd" {
	fps 30
}

$sequence "down" "switch001_anims\down.smd" {
	fps 30
	{
		event AE_CL_PLAYSOUND 0 "bee2.P1.button_down"
	}
}

$sequence "up" "switch001_anims\up.smd" {
	fps 30
	{
		event AE_CL_PLAYSOUND 0 "bee2.P1.button_up"
	}
}

$sequence "idle_down" "switch001_anims\idle_down.smd" {
	fps 30
}

$sequence "press" "switch001_anims\press.smd" {
	fps 30
	{
		event AE_CL_PLAYSOUND 0 "bee2.P1.button_down"
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