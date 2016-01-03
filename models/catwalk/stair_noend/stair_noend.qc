$modelname "BEE2/catwalk/factory_hanging_stairs_128_extended.mdl"

$staticprop

$bodygroup "Body"
{
	studio "hanging_stair_128_reference.smd"
}

$lod 50
{
	replacemodel "hanging_stair_128_reference.smd" "hanging_stair_128_hanging_stair_128_lod1.smd"
}

$cdmaterials "models/props_bts/"

$surfaceprop "metalgrate"

$contents "grate"

$sequence "idle" "anims/idle.smd" {
	fps 30
}

$collisionmodel "hanging_stair_128_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave
}

