// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/cust_fizz.mdl"
$cdmaterials "BEE2\models\props_ingame\cust_fizz"

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


$texturegroup "skinfamilies"
{
	{
		"fizzler"
	}
	{
		"fizzler_dirty"
	}
	{
		"fizzler_danger"
	}
	{
		"fizzler_dirty_danger"
	}
}

$surfaceprop "metal"

$contents "solid"

$bbox -16.25 -24.25 -64.25 16.25 13.25 64.25
$illumposition 6 0 0

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

$collisionmodel "fizzler_static_physics.smd" {
	$concave
	$mass 100
}
