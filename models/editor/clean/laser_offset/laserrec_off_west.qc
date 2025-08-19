$modelname "props_map_editor/bee2/clean/laserrec_off_west.mdl"

$origin 0 -32 0

$bodygroup "Body"
{
	studio "laser_catcher_west_model.smd"
}


$surfaceprop "metalpanel"

$contents "solid"

$illumposition 0 32 -32

$cdmaterials "models\props_map_editor"

$bbox -64 -32 -64 0 32 0

$sequence "idle" {
	"anims/laserrec_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeOut" {
	"anims/laserrec_explodeOut.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeIn" {
	"anims/laserrec_explodeIn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
