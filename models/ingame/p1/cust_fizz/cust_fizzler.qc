$modelname "BEE2/props_p1/cust_fizzler.mdl"

$staticprop

$bodygroup "Body"
{
	studio "cust_fizzler_reference.smd"
}

$lod 40
{
	replacemodel "cust_fizzler_reference.smd" "cust_fizzler_lod1.smd"
}

$cdmaterials "BEE2/models/props_p1/"

$texturegroup "skinfamilies" 
{
	{
		"cust_fizz"
		"cust_fizz_light"
	}
	{
		"cust_lfield"
		"cust_fizz_light"
	}
}

$surfaceprop "metal"

$contents "solid"

$sequence "idle" {
	"anims/idle.smd"
}

$collisionmodel "cust_fizzler_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

