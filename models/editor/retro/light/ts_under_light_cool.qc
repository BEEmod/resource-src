$modelname "props_map_editor/bee2/retro/lights/light_cool.mdl"

$cdmaterials "BEE2/models/props_map_editor/"
$body "Body" "light_ref.smd"

$renamematerial "light_name" "white001"

$sequence "idle" "light_ref.smd"

$sequence "explodeOut" "anim_expand.smd" {
	fps 30
}

$sequence "explodeIn" "anim_contract.smd" {
	fps 30
}