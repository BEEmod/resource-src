$modelname "props_map_editor/BEE2/clean/absolute_fizzler.mdl"

$bodygroup "Body"
{
	studio "abs_fizz_ref.smd"
}

$cdmaterials "models/props_map_editor/"

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

