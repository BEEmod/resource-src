
$modelname "props_map_editor/BEE2/50s/btn_cube.mdl"

$cdmaterials "BEE2/models/props_map_editor/" "models/props_map_editor/"

$bodygroup "default"
{
	studio "cube_button_recessed_ref.smd"
}

$origin 0 0 8 // Recess.

$sequence "idle" "anims/cube_idle.smd" {
	fps 30
}

$sequence "explodeOut" "anims/cube_expand.smd" {
	fps 30
}

$sequence "explodeIn" "anims/cube_contract.smd" {
	fps 30
}
