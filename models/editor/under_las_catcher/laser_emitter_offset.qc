$modelname "props_map_editor/under_las_catcher_offset.mdl"

$origin 0 -32 0

$body "Body" "laser_catcher_offset.smd"

$cdmaterials "BEE2/models/props_map_editor/"

$sequence "idle" "laser_catcher_offset.smd" {
	fps 30
}

$sequence "expand" "anim_expand_off.smd" {
	fps 30
}

$sequence "contract" "anim_contract_off.smd" {
	fps 30
}

$sequence "expand_idle" "anim_out_off.smd" {
	fps 30
}
