$modelname "props_map_editor/bee2/signage_antline_fwd.mdl"

$body "Body" "signage_antline_ref.smd"

$cdmaterials "BEE2/models/props_map_editor/signage"
$renamematerial "signage" "signage_antline"

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
