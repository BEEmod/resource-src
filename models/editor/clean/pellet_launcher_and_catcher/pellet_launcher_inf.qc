$modelname "props_map_editor/bee2/clean/pellets/pellet_launcher_inf.mdl"

$bodygroup "Body"
{
	studio "pellet_launcher_inf_reference.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$cdmaterials "BEE2/models/props_map_editor/"

$sequence "idle" {
	"anims\launcher_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeOut" {
	"anims\launcher_explodeOut.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeIn" {
	"anims\launcher_explodeIn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
