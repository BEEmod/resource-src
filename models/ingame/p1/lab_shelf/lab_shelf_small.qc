// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_p1/lab_shelf_small.mdl"

$staticprop

$bodygroup "lab_shelf_small"
{
	studio "lab_shelf_small_reference.smd"
}

# Offset so the wall-side is on grid, and the shelf tops
# are as well - this helps with alignment.
$origin 0 19.15 3.09

$cdmaterials "BEE2/models/props_p1/"
// They're almost identical, the difference won't be noticable.
$renamematerial "lab_shelf_small" "lab_shelf"

// Model uses material "lab_shelf_small.vmt"

$surfaceprop "metal"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 17.577 0

 $bbox -36 -42 -44 0 42 44

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -35.154243 -41.043716 -43.606224 0 41.043716 43.606224


$sequence "idle" "lab_shelf_small_reference.smd" {
	fps 30
}

$collisionmodel "lab_shelf_small_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave
}

