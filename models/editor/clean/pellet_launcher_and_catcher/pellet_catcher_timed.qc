$modelname "props_map_editor/bee2/clean/pellets/pellet_catcher_timed.mdl"

$bodygroup "Body"
{
	studio "pellet_catcher_tim_reference.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$cdmaterials "BEE2/models/props_map_editor/"

$sequence "idle" {
	"anims\catcher_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeOut" {
	"anims\catcher_explodeOut.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeIn" {
	"anims\catcher_explodeIn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
