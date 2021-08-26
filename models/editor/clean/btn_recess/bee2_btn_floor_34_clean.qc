// Created by Crowbar 0.44.0.0

$modelname "props_map_editor/bee2_btn_floor_34_clean.mdl"

$bodygroup "Body"
{
	studio "bee2_btn_floor_34_clean_ref.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$cdmaterials "models/props_map_editor/"
$cdmaterials "BEE2/models/props_map_editor/"

$origin 0 0 -96

$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeOut" {
	"explodeOut.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeIn" {
	"explodeIn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "push" {
	"push.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
