$modelname "BEE2/superpos_cube/modern_weight.mdl"

$staticprop
$mostlyopaque

$bodygroup "Body"
{
	studio "metal_box_reference.smd"
}

$cdmaterials "BEE2/models/superpos/"

$surfaceprop "Metal_Box"

$contents "grate"

$sequence "idle" "metal_box_reference.smd" {
	fps 30
	"ACT_IDLE" 1
}

$collisionmodel "metal_box_physics.smd"
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
