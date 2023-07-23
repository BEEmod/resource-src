$modelname "props_map_editor/BEE2/retro/laser_emitter_offset_north.mdl"

$cdmaterials "BEE2/models/props_map_editor/under/" "models/props_map_editor/"

$origin -12 -32 0

$bodygroup "default"
{
	studio "laser_emitter_offset_north.smd"
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
