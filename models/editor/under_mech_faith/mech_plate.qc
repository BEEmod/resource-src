$modelname "props_map_editor/under_mech_faith_plate.mdl"

$cdmaterials "BEE2/models/props_map_editor/"

$body "Body" "mech_plate.smd"

$renamematerial "plasticwall003a" "props_plasticwall003a"

$sequence "idle" "anim_idle.smd" {
	fps 30
}
$sequence "explodeOut" "anim_expand.smd" {
	fps 30
}

$sequence "explodeIn" "anim_contract.smd" {
	fps 30
}

$sequence "idle_out" "anim_out.smd" {
	fps 30
}