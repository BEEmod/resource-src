// Created by Crowbar 0.19.0.0

$modelname "props_map_editor/bee2_fizz_error.mdl"

$bodygroup "Body"
{
	studio "fizzler_error.smd"
}

$cdmaterials	"BEE2/models/props_map_editor/fizzler/"
$renamematerial "fizzler" "fizz_error"

$sequence "idle" "fizzler_anims\idle.smd" {
	fps 30
}

$sequence "explodeOut" "fizzler_anims\explodeOut.smd" {
	fps 30
}

$sequence "explodeIn" "fizzler_anims\explodeIn.smd" {
	fps 30
}

