$modelname "props_map_editor/bee2/clean/pellets/pellet_launcher.mdl"

$bodygroup "Body"
{
	studio "pellet_launcher_tim_reference.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$cdmaterials "BEE2/models/props_map_editor/"

$sequence "idle" {
	"pellet_launcher_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeOut" {
	"pellet_launcher_anims\explodeOut.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeIn" {
	"pellet_launcher_anims\explodeIn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
