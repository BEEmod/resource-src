$modelname "props_map_editor/BEE2/p1/fizzler/fr_matter_inquisition_field.mdl"

$bodygroup "Body"
{
	studio "fizz_fr_mif_ref.smd"
}

$contents "solid"

$renamematerial "fizzler_effect_fade" "fr_mif_field"

$cdmaterials "BEE2\models\props_map_editor\p1"  "BEE2\models\props_map_editor\fizzler\"

$sequence "idle" {
	"fizz_fr_mif_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
