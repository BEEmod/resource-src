$modelname "props_map_editor/bee2/clean/wom_cond_plate.mdl"

$body "Body" "wom_plate.smd"

$cdmaterials "BEE2/models/props_map_editor/cond_plate/" "BEE2/models/props_map_editor/"

$sequence "idle" "wom_plate.smd" {
	fps 1
}

$sequence "expand" "anim_expand.smd" {
	fps 30
}

$sequence "contract" "anim_contract.smd" {
	fps 30
}

$sequence "expanded" "anim_out.smd" {
	fps 1
}
