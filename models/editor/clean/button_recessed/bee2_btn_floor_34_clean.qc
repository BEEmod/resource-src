$modelname "props_map_editor/bee2/clean/btn_floor_34.mdl"

$bodygroup "Body"
{
	studio "bee2_btn_floor_34_clean_ref.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$cdmaterials "models/props_map_editor/"
$cdmaterials "BEE2/models/props_map_editor/"

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
