$modelname "props_map_editor/BEE2_track_plat_panel_black.mdl"

$bodygroup "Body"
{
	studio "BEE2_track_plat_panel_black.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$cdmaterials "models/props_map_editor/"

$sequence "idle" {
	"BEE2_track_plat_panel_black.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
