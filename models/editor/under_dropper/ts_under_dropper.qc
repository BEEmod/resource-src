$modelname "props_map_editor/ts_under_dropper.mdl"

$cdmaterials "models/props_map_editor/tspen"
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