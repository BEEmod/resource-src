$modelname "props_map_editor/BEE2/logic/strip_or.mdl"

$bodygroup "Body"
{
	studio "logic_strip_ref.smd"
}

$surfaceprop "default"

$contents "solid"

$renamematerial "logic_strip_tex" "or"

$cdmaterials "BEE2/models/props_map_editor/logic/"

$sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
