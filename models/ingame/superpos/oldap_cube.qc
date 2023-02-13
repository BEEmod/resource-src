$modelname "BEE2/superpos_cube/oldap_cube.mdl"

$staticprop
$mostlyopaque

$bodygroup "Body"
{
	studio "underground_weighted_cube_reference.smd"
}

$cdmaterials "BEE2/models/superpos/"

$surfaceprop "Underground_Cube"

$contents "grate"

$sequence "idle" "underground_weighted_cube_reference.smd" {
	fps 30
	"ACT_IDLE" 1
}

$collisionmodel "underground_weighted_cube_physics.smd"
{
	$mass 40
	$inertia 1
	$damping 0.1
	$rotdamping 0
}

$keyvalues
{
	prop_data 
	{
		"base" "Metal.small"
	}
}
