// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_p1/lab_shelf.mdl"

$staticprop

$bodygroup "lab_shelf"
{
	studio "lab_shelf_reference.smd"
}

# Offset so the wall-side is on grid, and the shelf tops
# are as well - this helps with alignment.
$origin 0 19.15 1.575

$cdmaterials "BEE2/models/props_p1/"

// Model uses material "lab_shelf.vmt"

$surfaceprop "metal"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 17.577 0

$bbox -36 -64 -64 0 64 64

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -35.154243 -64 -62.031704 0 64 62.031704


$sequence "idle" "lab_shelf_reference.smd" {
	fps 30
}

$collisionmodel "lab_shelf_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

