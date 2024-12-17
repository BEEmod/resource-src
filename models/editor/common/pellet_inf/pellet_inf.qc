$modelname "props_map_editor/bee2/logic/pellet_inf.mdl"

$staticprop

$bodygroup "Body"
{
	studio "pellet_inf_ref.smd"
}

$surfaceprop "no_decal"

$contents "solid"

$cdmaterials "BEE2\models\props_map_editor\"

$sequence "idle" {
	"pellet_inf_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
