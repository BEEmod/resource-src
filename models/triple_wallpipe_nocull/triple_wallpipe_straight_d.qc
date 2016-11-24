// Created by Crowbar 0.36.0.0

$include "triple_wallpipe.qci"

$ModelName "BEE2/triple_wallpipe_nocull/straight_d.mdl"

$StaticProp

$BodyGroup "default"
{
	studio "triple_wallpipe_straight_d_reference.smd"
}

$LOD 45
{
	replacemodel "triple_wallpipe_straight_d_reference.smd" "triple_wallpipe_straight_d_model_lod1.smd"
}

$CollisionModel "triple_wallpipe_straight_d_physics.smd"
{
	$mass 1090.784
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
