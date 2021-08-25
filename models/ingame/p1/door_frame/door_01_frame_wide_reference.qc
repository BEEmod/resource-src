// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_p1/door_frame_thick.mdl"

$staticprop

$bodygroup "Body"
{
	studio "door_01_frame_wide_reference_reference.smd"
}

$lod 25
{
	replacemodel "door_01_frame_wide_reference_reference.smd" "door_01_frame_wide_reference_door_01_frame_wide_reference_lod1.smd"
}
$lod 50
{
	replacemodel "door_01_frame_wide_reference_reference.smd" "door_01_frame_wide_reference_door_01_frame_wide_reference_lod2.smd"
}

$cdmaterials "models\props\"
$renamematerial "door_01" "door_01_off" // The original material is wrong/broken..

// Model uses material "Door_01.vmt"

$surfaceprop "metal"

$contents "solid"

// Make the bounding box align to grid nicely.
$bbox -24 -72 0 24 72 128

$sequence "idle" "door_01_frame_wide_reference_anims\idle.smd" {
	fps 30
}

$collisionmodel "door_01_frame_wide_reference_physics.smd"
{
	$concave
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
}

