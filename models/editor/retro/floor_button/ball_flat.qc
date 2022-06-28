
$modelname "props_map_editor/BEE2/70s/btn_sphere.mdl"

$cdmaterials "BEE2/models/props_map_editor/" "models/props_map_editor/"

$bodygroup "default"
{
	studio "ball_button_flat_ref.smd"
}



$sequence "idle" "anims/ball_idle.smd" {
	fps 30
}

$sequence "explodeOut" "anims/ball_expand.smd" {
	fps 30
}

$sequence "explodeIn" "anims/ball_contract.smd" {
	fps 30
}
