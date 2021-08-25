// P1 BTS Railing model, recompiled as a static prop (it was originally physics for some reason)

$modelname "bee2/props_p1/bts_handrail_long.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Handrail04_long_reference.smd"
}

$lod 30
{
	replacemodel "Handrail04_long_reference.smd" "Handrail04_long_reference_lod1.smd"
	nofacial
}
$lod 60
{
	replacemodel "Handrail04_long_reference.smd" "Handrail04_long_reference_lod2.smd"
	nofacial
}

$surfaceprop "metal"

$contents "solid"

$illumposition -0.417 0 0

$cdmaterials "bee2/models/props_p1/"

$cbox 0 0 0 0 0 0

$bbox -1.259 -64.835 -20.263 1.103 64 20.299


$sequence "idle" {
	"handrail04_long_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// Disabled collisions so the .phy file doesn't need to be packed.
// Re-enable this if we ever add a P1 BTS style, or otherwise need to use this in an area the player can access.

// $collisionmodel "handrail04_long_physics.smd"
// {
// 	$mass 11
// 	$inertia 1
// 	$damping 0
// 	$rotdamping 0
// 	$rootbone " "
// 	$concave
// 	$maxconvexpieces 7
// }