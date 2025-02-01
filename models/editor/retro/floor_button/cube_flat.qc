
$modelname "props_map_editor/BEE2/retro/70s/btn_cube.mdl"

$cdmaterials "BEE2/models/props_map_editor/" "models/props_map_editor/"

$bodygroup "default"
{
	studio "cube_button_flat_ref.smd"
}



$sequence "idle" "anims/cube_idle.smd" {
	fps 30
}

$sequence "explodeOut" "anims/cube_expand.smd" {
	fps 30
}

$sequence "explodeIn" "anims/cube_contract.smd" {
	fps 30
}
