
$modelname "props_map_editor/BEE2/70s/btn_cube.mdl"

$cdmaterials "BEE2/models/props_map_editor/under/"

$bodygroup "default"
{
	studio "cube_button_ref.smd"
}

$sequence "idle" "anims/cube_expand.smd" {
	frame 1 1
	fps 30
}

$sequence "explodeOut" "anims/cube_expand.smd" {
	fps 30
}

$sequence "explodeIn" "anims/cube_contract.smd" {
	fps 30
}
