$modelname "props_map_editor/BEE2/logic/cube_coloriser.mdl"

$body "Body" "coloriser_ref.smd"

$cdmaterials "BEE2/models/props_map_editor/"

$sequence "idle" "anims/expand.smd" {
	frames 1 1
}

$sequence "expand" "anims/expand.smd" {
	fps 60
}

$sequence "contract" "anims/contract.smd" {
	fps 60
}

$sequence "expand_idle" "anims/contract.smd" {
	frames 1 1
}

