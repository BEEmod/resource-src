// Created by Crowbar 0.54

$modelname "BEE2/props_underground/gantry_128.mdl"

$staticprop

$bodygroup "body"
{
	studio "gantry_128_model.smd"
}

$lod 50
{
	replacemodel "gantry_128_model.smd" "gantry_128_model_lod1.smd"
	nofacial
}

$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 64

$cdmaterials "models/props_underground/"

$bbox -64 -64 0 64 64 128

$sequence "ref" {
	"anim_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "gantry_128_physics.smd"
{
	$mass 228.518938
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
}
