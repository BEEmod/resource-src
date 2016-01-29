// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_p1/keyboard.mdl"

$staticprop

$bodygroup "keyboard"
{
	studio "keyboard_reference.smd"
}

$cdmaterials "BEE2/models/props_p1/"

// Model uses material "kb_mouse.vmt"

$surfaceprop "plastic"

$contents "solid"

// Offset to make the base grid-aligned.
$origin 0 0 0.5

$bbox -6 -12 -2 6 12 0

$sequence "idle" "keyboard_idle.smd" {
	fps 30
}

$collisionmodel "keyboard_physics.smd"
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave
}
