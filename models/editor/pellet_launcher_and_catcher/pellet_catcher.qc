$modelname "props_map_editor/bee2/clean/pellets/pellet_catcher.mdl"

$bodygroup "Body"
{
	studio "pellet_catcher_inf_reference.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$cdmaterials "BEE2/models/props_map_editor/"

$sequence "idle" {
	"pellet_catcher_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeOut" {
	"pellet_catcher_anims\explodeOut.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeIn" {
	"pellet_catcher_anims\explodeIn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
