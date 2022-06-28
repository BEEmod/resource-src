
$modelname "props_map_editor/BEE2/50s/btn_sphere.mdl"

$cdmaterials "BEE2/models/props_map_editor/" "models/props_map_editor/"

$bodygroup "default"
{
	studio "ball_button_recessed_ref.smd"
}

$origin 0 0 8 // Recess.

$sequence "idle" "anims/ball_idle.smd" {
	fps 30
}

$sequence "explodeOut" "anims/ball_expand.smd" {
	fps 30
}

$sequence "explodeIn" "anims/ball_contract.smd" {
	fps 30
}
