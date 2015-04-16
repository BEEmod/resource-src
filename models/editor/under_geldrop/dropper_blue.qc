// Created by Crowbar 0.19.0.0

$modelname "props_map_editor/under_gel_drop_blue.mdl"

$cdmaterials "BEE2/models/props_map_editor/under_gel_drop"

$bodygroup "default"
{
	studio "paint_dropper.smd"
}

$renamematerial "dropper" "dropper_blue"
$origin 0 0 -24

$surfaceprop "default"

$contents "solid"

$sequence "BindPose" "idle.smd" {
	fps 30
}

$sequence "explodeOut" "out.smd" {
	fps 30
}

$sequence "explodeIn" "in.smd" {
	fps 30
}