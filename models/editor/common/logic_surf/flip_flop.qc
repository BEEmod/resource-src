$modelname "props_map_editor/BEE2/logic/voxel_flip_flop.mdl"

$bodygroup "Body"
{
	studio "logic_gate_ref.smd"
}

$surfaceprop "default"

$contents "solid"

$renamematerial "logic" "flip_flop"

$cdmaterials "BEE2/models/props_map_editor/logic/"

$sequence "idle" {
	"anim_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
