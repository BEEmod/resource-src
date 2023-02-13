// ARES's new ball prop.

$modelname	"BEE2/superpos_cube/oldap_ball_228.mdl"
$body mybody	"ball_underground_228.smd"
$surfaceprop "sphere2"

$contents "grate"
$mostlyopaque

$cdmaterials "BEE2/models/superpos/"

$sequence "ref" {
	"ball_underground_228.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionjoints "ball_underground_228_col.smd"
{
	$mass 40
	$inertia 1
	$damping 0.1
	$rotdamping 0
	$rootbone " "
}

$keyvalues
{
	prop_data 
	{
		"base"		"Cloth.Medium"
	}
}
