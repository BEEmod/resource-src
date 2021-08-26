$modelname "props_map_editor/under_hep_emitter.mdl"

$body "Body" "emitter.smd"

$cdmaterials "BEE2/models/props_map_editor/"

$sequence "idle" "emitter.smd" {
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
