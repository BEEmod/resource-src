
$modelname "props_map_editor/BEE2/retro/70s/btn_floor.mdl"

$cdmaterials "BEE2/models/props_map_editor/" "models/props_map_editor/"

$bodygroup "default"
{
	studio "floor_flat.smd"
}

$origin 0 0 64

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
