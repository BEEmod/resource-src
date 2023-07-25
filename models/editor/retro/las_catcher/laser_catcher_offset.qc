$modelname "props_map_editor/BEE2/retro/laser_catcher_offset.mdl"

$cdmaterials "BEE2/models/props_map_editor/under/" "models/props_map_editor/"

$origin 0 -32 0

$bodygroup "default"
{
	studio "laser_catcher_center.smd"
}

$sequence "idle" "anims/idle.smd" {
	fps 60
}

$sequence "expand" "anims/expand.smd" {
	fps 60
}

$sequence "contract" "anims/contract.smd" {
	fps 60
}
