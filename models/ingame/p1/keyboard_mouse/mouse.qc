// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_p1/mouse.mdl"

$staticprop

$bodygroup "mouse"
{
	studio "mouse_reference.smd"
}

$cdmaterials "BEE2/models/props_p1/"

// Model uses material "kb_mouse.vmt"

$surfaceprop "plastic"

$contents "solid"

// Offset to make the base grid-aligned.
$origin 0 0 0.5

$bbox -4 -2 -2 3 2 0

$sequence "idle" "mouse_idle.smd" {
	fps 30
}

$collisionmodel "mouse_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave
}