$modelname "props_map_editor/under_light_warm_noback.mdl"

$cdmaterials "BEE2/models/props_map_editor/"
$body "Body" "light_ref_noback.smd"

$renamematerial "light_name" "light_orange001"

$sequence "idle" "light_ref_noback.smd" {
	fps 30
}
$sequence "explodeOut" "anims\out.smd" {
	fps 30
}

$sequence "explodeIn" "anims\in.smd" {
	fps 30
}