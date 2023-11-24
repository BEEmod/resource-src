$modelname "props_map_editor/BEE2/p1/fizzler/rex_flux_field.mdl"

$bodygroup "Body"
{
	studio "rex_flux_field_ref.smd"
}

$contents "solid"

$cdmaterials "BEE2\models\props_map_editor\p1"  "BEE2\models\props_map_editor\fizzler\"

$sequence "idle" {
	"rex_flux_field_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
