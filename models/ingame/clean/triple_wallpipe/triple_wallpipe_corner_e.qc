// Created by Crowbar 0.36.0.0

$include "triple_wallpipe.qci"

$ModelName "BEE2/triple_wallpipe/corner_e.mdl"

$BodyGroup "default"
{
	studio "triple_wallpipe_corner_e_reference.smd"
}

$LOD 45
{
	replacemodel "triple_wallpipe_corner_e_reference.smd" "triple_wallpipe_corner_e_model_lod1.smd"
}

$CollisionModel "triple_wallpipe_corner_e_physics.smd"
{
	$mass 1908.333
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
