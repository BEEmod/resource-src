$modelname "props_map_editor/bee2/clean/pellets/pellet_catcher_timed.mdl"

$bodygroup "Body"
{
	studio "pellet_catcher_reference.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$cdmaterials "models/props_map_editor/bee2/clean/pellets/"

$renamematerial pellet_catcher pellet_catcher_timed

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
