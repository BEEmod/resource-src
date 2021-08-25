// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_overgrown/gel_dropper.mdl"

$staticprop

$bodygroup "body"
{
	studio "paint_dropper_dirty_ref.smd"
}

$texturegroup "skinfamilies"
{
	{
	"gel_dropper_blue"
	}
	{
	"gel_dropper_grey"
	}
	{
	"gel_dropper_red"
	}
	{
	"gel_dropper_white"
	}
	{
	"gel_dropper_water"
	}
}

$cdmaterials "BEE2/models/props_overgrown/"

$surfaceprop "default"

$contents "solid"

$origin 0 0 -32

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0.093 -0.387 -39.82

// $bbox -63.625 -63.309 -80.25 64.121 63.693 0.359

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -63.347103 -63.308994 -80 64.121498 63.494099 0.359232

$sequence "ref" "../ref_gel/clean_dropper/paint_dropper_anims/ref.smd" {
	fps 30
}

$collisionmodel "../ref_gel/clean_dropper/paint_dropper_physics.smd"
{
	$mass 17194.35
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave
}

