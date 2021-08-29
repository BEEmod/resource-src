$modelname "bee2/props_p1/lights/p1_lightstrip.mdl"

$staticprop

$bodygroup "Body"
{
	studio "p1_lightstrip_reference.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$mostlyopaque

$illumposition 0 0 4

$cdmaterials "models/bee2/props_p1/lights/"

$sequence "idle" {
	"anims/idle.smd"
	activity "ACT_IDLE" 1
}
