$modelname "props_map_editor/under_dropper_orig.mdl"

$cdmaterials "BEE2/models/props_map_editor/"
$body "Body" "ts_under_dropper_ref.smd"
$origin 0 0 64

$sequence "idle" "ts_under_dropper_ref.smd" {
	fps 30
}
$sequence "explodeOut" "anims\out.smd" {
	fps 30
}

$sequence "explodeIn" "anims\in.smd" {
	fps 30
}

$sequence "disappear" "anims\disappear.smd" {
	fps 20
}

$sequence "reappear" "anims\reappear.smd" {
	fps 20
}