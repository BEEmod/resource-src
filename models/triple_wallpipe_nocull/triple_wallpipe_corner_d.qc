// Created by Crowbar 0.36.0.0

$include "triple_wallpipe.qci"

$ModelName "BEE2/triple_wallpipe_nocull/corner_d.mdl"

$BodyGroup "default"
{
	studio "triple_wallpipe_corner_d_reference.smd"
}

$LOD 45
{
	replacemodel "triple_wallpipe_corner_d_reference.smd" "triple_wallpipe_corner_d_model_lod1.smd"
}

$CollisionModel "triple_wallpipe_corner_d_physics.smd"
{
	$mass 1908.331
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
