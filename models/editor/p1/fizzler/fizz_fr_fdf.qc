$modelname "props_map_editor/BEE2/p1/fizzler/fr_force_deflection_field.mdl"

$bodygroup "Body"
{
	studio "fizz_fr_fdf_ref.smd"
}

$contents "solid"

$renamematerial "fizzler_effect_fade" "fr_fdf_field"

$cdmaterials "BEE2\models\props_map_editor\p1"  "BEE2\models\props_map_editor\fizzler\"

$sequence "idle" {
	"fizz_fr_fdf_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
