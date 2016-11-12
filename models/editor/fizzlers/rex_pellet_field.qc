$bodygroup "Body"
{
	studio "rex_pellet_field.smd"
}

$modelname "props_map_editor/rex_pellet_field.mdl"

$cdmaterials "BEE2/models/props_map_editor/fizzler/" "models/props_map_editor/" "BEE2/models/props_map_editor/rex/"

$renamematerial "field" "pellet_field"

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


