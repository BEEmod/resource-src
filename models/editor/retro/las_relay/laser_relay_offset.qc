$modelname "props_map_editor/BEE2/retro/laser_relay_offset.mdl"

$cdmaterials "BEE2/models/props_map_editor/under/" "models/props_map_editor/"

$origin 0 -32 0

$bodygroup "relay"
{
	studio "laser_relay_ref.smd"
}

$sequence "idle" "anims/idle.smd" {
	fps 1
}

$sequence "expand" "anims/expand.smd" {
	fps 60
}

$sequence "contract" "anims/contract.smd" {
	fps 60
}

$sequence "expand_idle" "anims/expand_idle.smd" {
	fps 1
}
