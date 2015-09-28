$modelname "props_map_editor/under_las_catcher_center.mdl"

$origin 0 0 0

$body "Body" "laser_catcher_center.smd"


$cdmaterials "BEE2/models/props_map_editor/"

$sequence "idle" "anim_idle.smd" {
	fps 30
}

$sequence "expand" "anim_expand_cent.smd" {
	fps 30
}

$sequence "contract" "anim_contract_cent.smd" {
	fps 30
}

$sequence "expand_idle" "anim_out_cent.smd" {
	fps 30
}
