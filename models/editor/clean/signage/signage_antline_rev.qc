$modelname "props_map_editor/bee2/signage_antline_rev.mdl"

$body "Body" "signage_antline_ref.smd"

$cdmaterials "BEE2/models/props_map_editor/signage"
$renamematerial "signage" "signage_antline"

$sequence "idle" "anims/idle_rev_closed.smd" {
	fps 30
}

$sequence "expand" "anims/expand_rev.smd" {
	fps 30
}

$sequence "contract" "anims/contract_rev.smd" {
	fps 30
}

$sequence "expand_idle" "anims/idle_rev_open.smd" {
	fps 30
}
