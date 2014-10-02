$modelname "props_map_editor/ts_under_light_cool.mdl"

$cdmaterials "models/props_map_editor/tspen"
$body "Body" "light_ref.smd"

$renamematerial "light_name" "white001"


$sequence "idle" "light_ref.smd" {
	fps 30
}
$sequence "explodeOut" "anims\out.smd" {
	fps 30
}

$sequence "explodeIn" "anims\in.smd" {
	fps 30
}