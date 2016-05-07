$modelname "props_map_editor/bee2_signage_70s.mdl"

// We need a different SMD for this one since the plywood texture needs different scaling.
$body "Body" "signage_70s.smd"

$cdmaterials "BEE2/models/props_map_editor/signage" "BEE2/models/props_map_editor/"

$sequence "idle" "anim_idle.smd" {
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
