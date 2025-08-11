$modelname "props_map_editor/BEE2/logic/voxel_or.mdl"

$bodygroup "Body"
{
	studio "logic_gate_ref.smd"
}

$surfaceprop "default"

$contents "solid"

$renamematerial "logic_sheet" "or"

$cdmaterials "BEE2/models/props_map_editor/logic/"

$sequence "idle" {
	"anim_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
