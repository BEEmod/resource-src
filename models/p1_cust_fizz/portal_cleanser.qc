// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_p1/cust_fizzler.mdl"

$staticprop

$bodygroup "Body"
{
	studio "cust_fizz.smd"
}

$lod 40
{
	replacemodel "cust_fizz.smd" "cust_fizz_lod1.smd"
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

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0.287 0 0.006

// $bbox -11.923 -10.098 -64.818 11.923 10.578 64.83
$bbox -12 -12 -68 12 12 68

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -11.923275 -9.976409 -64.817932 11.923275 10.550143 64.829712



$sequence "idle" "portal_cleanser_idle.smd" {
	fps 30
}

$collisionmodel "portal_cleanser_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

