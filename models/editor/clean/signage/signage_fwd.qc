$modelname "props_map_editor/bee2/signage_fwd.mdl"

$body "Body" "signage_ref.smd"

$cdmaterials "BEE2/models/props_map_editor/signage"

$sequence "idle" "anims/idle_fwd_closed.smd" {
	fps 30
}

$sequence "expand" "anims/expand_fwd.smd" {
	fps 30
}

$sequence "contract" "anims/contract_fwd.smd" {
	fps 30
}

$sequence "expand_idle" "anims/idle_fwd_open.smd" {
	fps 30
}
