// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/cust_fizz.mdl"

$bodygroup "Body"
{
	studio "fizzler_dynamic_reference.smd"
}

$lod 15
{
	replacemodel "fizzler_dynamic_reference.smd" "fizzler_dynamic_fizzler_reference_lod1.smd"
}
$lod 25
{
	replacemodel "fizzler_dynamic_reference.smd" "fizzler_dynamic_fizzler_reference_lod2.smd"
}

$cdmaterials "BEE2\models\props_ingame\cust_fizz"

$texturegroup "skinfamilies"
{
	{
		"fizzler.vmt"
	}
	{
		"fizzler_dirty.vmt"
	}
	{
		"fizzler_danger.vmt"
	}
	{
		"fizzler_dirty_danger.vmt"
	}
}

$surfaceprop "metal"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition -5.405 0 0

$bbox -16.25 -24.25 -64.25 16.25 13.25 64.25

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
 $hboxset "default"
 $hbox 0 "root" 0 -64.000008 -16.000023 36 64.000008 16.000023
 $hbox 0 "hinge01" -0.00001 -64 -1.000024 9.00001 63.999996 0.000021
 $hbox 0 "hinge02" -0.00001 -63.999996 -0.000021 9.00001 64 1.000024
 $hbox 0 "fizzler1" -35 -63.828865 -8.40134 1.190515 63.733143 8.40134




$sequence "idle" "fizzler_dynamic_anims\idle.smd" {
	fps 30
}

$sequence "close" "fizzler_dynamic_anims\close.smd" {
	fps 30
}

$sequence "closeIdle" "fizzler_dynamic_anims\closeIdle.smd" {
	fps 30
}

$sequence "open" "fizzler_dynamic_anims\open.smd" {
	fps 30
}

$collisionmodel "fizzler_dynamic_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

