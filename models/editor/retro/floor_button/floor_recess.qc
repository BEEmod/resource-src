
$modelname "props_map_editor/BEE2/retro/button_floor_50s.mdl"

$cdmaterials "BEE2/models/props_map_editor/under/" "models/props_map_editor/"

$bodygroup "default"
{
	studio "floor_recessed.smd"
}

$origin 0 0 72 // Recess.

$sequence "idle" "anims/expand.smd" {
	frame 1 1
	fps 30
}

$sequence "explodeOut" "anims/expand.smd" {
	fps 30
}

$sequence "explodeIn" "anims/contract.smd" {
	fps 30
}
