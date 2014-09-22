$modelname "props_map_editor/ts_under_light_warm.mdl"

$cdmaterials "models/props_map_editor/tspen"
$body "Body" "light_ref.smd"

$renamematerial "light_name" "light_orange001"

$sequence "idle" "light_ref.smd" {
	fps 30
}
$sequence "explodeOut" "anims\out.smd" {
	fps 30
}

$sequence "explodeIn" "anims\in.smd" {
	fps 30
}