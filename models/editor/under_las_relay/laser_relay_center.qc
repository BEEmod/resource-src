$modelname "props_map_editor/under_las_relay_center.mdl"

$origin 0 0 0

$body "Body" "laser_relay.smd"

$cdmaterials "BEE2/models/props_map_editor/"

$sequence "idle" "anim_idle.smd" {
	fps 30
}

$sequence "expand" "anim_expand.smd" {
	fps 30
}

$sequence "contract" "anim_contract.smd" {
	fps 30
}

$sequence "expand_idle" "anim_out.smd" {
	fps 30
}
