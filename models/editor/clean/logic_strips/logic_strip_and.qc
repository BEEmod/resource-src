$modelname "props_map_editor/logic_strip_and.mdl"

$bodygroup "Body"
{
	studio "logic_strip_ref.smd"
}

$surfaceprop "default"

$contents "solid"

$renamematerial "logic_strip_tex" "logic_and"

$cdmaterials "models\props_map_editor"

$sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}