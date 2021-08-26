// Created by Crowbar 0.54

$modelname "props_map_editor/BEE2_panel_piston_top_white.mdl"

$bodygroup "Body"
{
	studio "BEE2_panel_piston_top_white.smd"
}


$surfaceprop "metalpanel"

$contents "solid"

$cdmaterials "models/props_map_editor/"

$sequence "idle" {
	"BEE2_panel_piston_top_white.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
