$modelname "props_map_editor/under_light_cold_noback.mdl"

$cdmaterials "BEE2/models/props_map_editor/"
$body "Body" "light_ref_noback.smd"

$renamematerial "light_name" "light_cold"

$sequence "idle" "anim_idle.smd" {
	fps 30
}
$sequence "explodeOut" "anim_expand.smd" {
	fps 30
}

$sequence "explodeIn" "anim_contract.smd" {
	fps 30
}

$sequence "out_idle" "anim_out.smd" {
	fps 30
}