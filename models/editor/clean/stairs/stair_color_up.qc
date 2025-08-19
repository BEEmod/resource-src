// Altered to allow for portalable stairs.

$modelname "props_map_editor/BEE2/clean/stairs_extended.mdl"

$bodygroup "Body"
{
	studio "stair_color_up_ref.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$illumposition -0.538 -60.844 2.676

$mostlyopaque

$cdmaterials "BEE2/models/props_map_editor"
$cdmaterials "models/props_map_editor"

$sequence "ref" {
	"stair_color_up_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
