$modelname "BEE2/superpos_cube/modern_reflect.mdl"

// $staticprop
$mostlyopaque

$bodygroup "Body"
{
	studio "reflection_cube_reference.smd"
}

$cdmaterials "BEE2/models/superpos/"

$surfaceprop "reflective"

$contents "grate"

$sequence "idle" "anim_idle.smd" {
	fps 30
	"ACT_IDLE" 1
}

$collisionmodel "reflection_cube_physics.smd"
{
	$mass 40
	$inertia 1
	$damping 0.1
	$rotdamping 0
	$masscenter 0 0 0 // Don't take the emitter part into account.
}

$keyvalues
{
	prop_data 
	{
		"base" "Metal.small"
	}
	physgun_interactions
	{
		// Replicate the same behaviour as regular cubes.
		preferred_carryangles 	"0 0 0"
	}
}
