// Created by Crowbar 0.19.0.0

$modelname "props_map_editor/p1_cube_dropper.mdl"
$bodygroup "Body"
{
	studio "p1_dropper.smd"
}
$cdmaterials "models/props_map_editor/" "BEE2/models/props_map_editor/"

$surfaceprop "metalpanel"

$origin 0 0 -36

$sequence "BindPose" "anims\idle.smd" {
	fps 30
}

$sequence "ExplodeOut" "anims\open.smd" {
	fps 30
}

$sequence "ExplodeIn" "anims\close.smd" {
	fps 30
}

$sequence "disappear" "anims\disappear.smd" {
	fps 20
}

$sequence "reappear" "anims\reappear.smd" {
	fps 20
}
