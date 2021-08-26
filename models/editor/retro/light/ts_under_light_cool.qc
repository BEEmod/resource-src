$modelname "props_map_editor/under_light_cool.mdl"

$cdmaterials "BEE2/models/props_map_editor/"
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