// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/retro_track_128.mdl"

$staticprop

$origin 0 0 -16

$cdmaterials "models/props_cables"

$bodygroup "default"
{
	studio "moving_platform_track_reference.smd"
}


// Model uses material "models\props_cables\cable_beam_set.vmt"

$surfaceprop "default"

$contents "solid"

$bbox -64 -8 4 64 8 16

$sequence "BindPose" "moving_platform_track_reference.smd" {
	fps 30
}

$collisionmodel "moving_platform_track_physics.smd"
{
	$mass 603
	$inertia 1
	$damping 0
	$rotdamping 1
	$concave
}
