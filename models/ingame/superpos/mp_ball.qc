$modelname "BEE2/superpos_cube/modern_ball.mdl"

$staticprop
$mostlyopaque

$bodygroup "Body"
{
	studio "mp_ball_reference.smd"
}

$cdmaterials "BEE2/models/superpos/"

$SurfaceProp "sphere2"

$contents "grate"

$sequence "idle" "mp_ball_reference.smd" {
	fps 30
	"ACT_IDLE" 1
}

$collisionmodel "mp_ball_physics.smd"
{
	$mass 75
}

$keyvalues
{
	prop_data 
	{
		"base" "Metal.large"
	}
}
