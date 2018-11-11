// Created by Crowbar 0.44.0.0

$modelname "BEE2/props_clean/tuleby/absolute_fizz_static.mdl"

$staticprop

$bodygroup "Body"
{
	studio "abs_fizz_ref.smd"
}

$lod 15
{
	replacemodel "abs_fizz_ref.smd" "abs_fizz_lod1.smd"
}
$lod 25
{
	replacemodel "abs_fizz_ref.smd" "abs_fizz_lod2.smd"
}

$surfaceprop "metal"

$contents "solid"
$origin 8 0 0

$cdmaterials "models/props/" "BEE2/models/props_clean/tuleby/" "BEE2/models/props_overgrown/tuleby/"

$texturegroup "skinfamilies"
{
	{
	"fizzler"
	"abs_fizz_front"
	}
	{
	"fizzler_skin002"
	"abs_fizz_front_dirty"
	}
}

$cbox 0 0 0 0 0 0

// $bbox -16.25 -24.25 -64.25 16.25 13.25 64.25


$sequence "idle" {
	"fizzler_dynamic_anims\idle.smd"
	fps 30
}


$collisionmodel "abs_fizz_phy.smd"
{
	$mass 1000
}
