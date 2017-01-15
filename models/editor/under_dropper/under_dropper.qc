// New model, using original meshes.

$modelname "props_map_editor/under_dropper.mdl"

$cdmaterials "BEE2/models/props_map_editor/"

$body "Body" "under_dropper_ref.smd"

$origin 0 0 64

$sequence "idle" "under_dropper_ref.smd" {
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
