// Created by Crowbar 0.71

$modelname "bee2/props_p1/bts_fuse_set_08.mdl"

$staticprop

$bodygroup "128_fuse_set08"
{
	studio "128_fuse_set08.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0.048 9.186 0.002

$cdmaterials "bee2/models/props_p1/"

$texturegroup "skinfamilies"
{
	{ "128_fuse_set08"   }
	{ "128_fuse_set08_b" }
}

$cbox 0 0 0 0 0 0

$bbox -18.709 -60.97 -60.97 0.273 60.97 60.97


$sequence "idle" {
	"128_fuse_set08_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "128_fuse_set08_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
