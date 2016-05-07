$modelname "props_map_editor/bts_light_warm.mdl"

$cdmaterials "BEE2/models/props_map_editor/"
$body "Body" "light.smd"

$origin 0 0 64

$renamematerial "light_name" "white008"

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