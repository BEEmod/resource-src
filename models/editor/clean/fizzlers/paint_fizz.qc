$modelname "props_map_editor/bee2_paint_fizz.mdl"

$bodygroup "Body" {
	studio "paint_fizz_ref.smd"
}

$cdmaterials "BEE2/models/props_map_editor/fizzler/" "models/props_map_editor/"
	
$surfaceprop "metalpanel"

$contents "solid"

$sequence "idle" "fizzler_anims\idle.smd" {
	fps 30
}

$sequence "explodeOut" "fizzler_anims\explodeOut.smd" {
	fps 30
}

$sequence "explodeIn" "fizzler_anims\explodeIn.smd" {
	fps 30
}
