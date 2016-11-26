// Created by Crowbar 0.36.0.0

$include "triple_wallpipe.qci"

$ModelName "BEE2/triple_wallpipe/corner_b.mdl"

$BodyGroup "default"
{
	studio "triple_wallpipe_corner_b_reference.smd"
}

$LOD 45
{
	replacemodel "triple_wallpipe_corner_b_reference.smd" "triple_wallpipe_corner_b_model_lod1.smd"
}
$CollisionModel "triple_wallpipe_corner_b_physics.smd"
{
	$mass 1661.709
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
