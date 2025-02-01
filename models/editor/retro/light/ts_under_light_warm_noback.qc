$modelname "props_map_editor/bee2/retro/lights/light_warm_noback.mdl"

$cdmaterials "BEE2/models/props_map_editor/"
$body "Body" "light_ref_noback.smd"

$renamematerial "light_name" "light_orange001"

$sequence "idle" "light_ref_noback.smd"

$sequence "explodeOut" "anim_expand.smd" {
	fps 30
}

$sequence "explodeIn" "anim_contract.smd" {
	fps 30
}