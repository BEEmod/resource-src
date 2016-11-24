// Created by Crowbar 0.36.0.0

$include "triple_wallpipe.qci"

$ModelName "BEE2/triple_wallpipe_nocull/entrance_b.mdl"

$StaticProp

$BodyGroup "default"
{
	studio "triple_wallpipe_entrance_b_reference.smd"
}

$LOD 45
{
	replacemodel "triple_wallpipe_entrance_b_reference.smd" "triple_wallpipe_entrance_b_model_lod1.smd"
}

$CollisionModel "triple_wallpipe_entrance_b_physics.smd"
{
	$mass 2401.562
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
