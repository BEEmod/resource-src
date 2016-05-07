$modelname "props_map_editor/under_light_bridge.mdl"

$body "Body" "light_bridge.smd"

$cdmaterials "BEE2/models/props_map_editor/"

$sequence "idle" "light_bridge.smd" {
	fps 30
}

$sequence "expand" "anim_expand.smd" {
	fps 30
}

$sequence "contract" "anim_contract.smd" {
	fps 30
}

$sequence "expand_idle" "anim_out.smd" {
	fps 30
}
