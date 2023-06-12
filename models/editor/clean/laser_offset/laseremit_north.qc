$modelname "props_map_editor/laseremit_off_north.mdl"

$bodygroup "Body"
{
	studio "laser_emitter_offset_north_model.smd"
}


$surfaceprop "metalpanel"

$contents "solid"

$illumposition 0 32 -32

$cdmaterials "models\props_map_editor"

$cbox 0 0 0 0 0 0

$bbox -64 -32 -64 0 32 0

$sequence "idle" {
	"anims/laseremit_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeOut" {
	"anims/laseremit_explodeOut.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeIn" {
	"anims/laseremit_explodeIn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
