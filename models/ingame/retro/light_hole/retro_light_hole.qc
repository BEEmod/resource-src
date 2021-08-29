$modelname "BEE2/props_underground/retro_light_hole"
$body "Body" "retro_light_hole_reference"
$sequence idle "retro_light_hole_reference"

$bbox -16 -16 -48 16 16 8

$illumposition 0 0 -12
$mostlyopaque

$staticprop

$cdmaterials "BEE2/models/props_underground/light_hole"
$surfaceprop "metalpanel"

$texturegroup skinfamilies {
	{ "outside_light_old" }
	{ "outside_light_old_warm" }
	{ "outside_light_old_cold" }
}

$contents notsolid