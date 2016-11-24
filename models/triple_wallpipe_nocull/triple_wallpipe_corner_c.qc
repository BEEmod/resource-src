// Created by Crowbar 0.36.0.0

$include "triple_wallpipe.qci"

$ModelName "BEE2/triple_wallpipe_nocull/corner_c.mdl"

$BodyGroup "default"
{
	studio "triple_wallpipe_corner_c_reference.smd"
}

$LOD 45
{
	replacemodel "triple_wallpipe_corner_c_reference.smd" "triple_wallpipe_corner_c_model_lod1.smd"
}

$CollisionModel "triple_wallpipe_corner_c_physics.smd"
{
	$mass 1579.56
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
