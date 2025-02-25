$modelname "bee2/props_clean/sendificator/sendificator_slim.mdl"

$staticprop

$mostlyopaque

$bodygroup "mesh"
{
	studio "sendificator_slim_reference.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$illumposition 0 0 12

$cdmaterials "models\props\konclan\"

$texturegroup "skinfamilies"
{
	{ "sendificator_slim_r", "sendificator_slim" }
	{ "sendificator_slim_dirty_r", "sendificator_slim_dirty" }
}

$sequence "idle" "sendificator_slim_reference.smd"

$collisionmodel "sendificator_slim_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 41
}
