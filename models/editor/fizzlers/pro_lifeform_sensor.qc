$bodygroup "Body"
{
	studio "rex_pellet_field.smd"
}

$modelname "props_map_editor/BEE2_lifeform_sensor.mdl"

$cdmaterials "BEE2/models/props_map_editor/fizzler/" "models/props_map_editor/"

$renamematerial "field" "lifeform_sensor"
$renamematerial "pellet_field_beams" "lifeform_sensor_field"

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
