// Created by Crowbar 0.19.0.0

$modelname "props_map_editor/paint_dropper_editor_reflection.mdl"

$bodygroup "body"
{
	studio "paint_dropper_editor_ref.smd"
}

$contents "solid"
$cdmaterials	"BEE2/models/props_map_editor/"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition -0.313 -0.092 -24.896

$bbox -64 -64 -64 64 64 16

$sequence "idle" "idle.smd" {
	fps 30
}

$sequence "explodeOut" "explodeOut.smd" {
	fps 30
}

$sequence "explodeIn" "explodeIn.smd" {
	fps 30
}

