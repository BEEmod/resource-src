$modelname "props_map_editor/BEE2/p1/fizzler/physler.mdl"

$bodygroup "Body"
{
	studio "fizz_physler_ref.smd"
}

$contents "solid"

$renamematerial "fizzler_effect_fade" "fg_physler_field"

$cdmaterials "BEE2\models\props_map_editor\p1"  "BEE2\models\props_map_editor\fizzler\"

$sequence "idle" {
	"fizz_physler_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
