$include "static_cam.qci"

$ModelName "BEE2/cam_parts/cam_lens_p1.mdl"

$origin 0 -22.181638 -14.45

$BodyGroup "studio"
{
	studio "cam_lens_ref.smd"
}

$LOD 40
{
	replacemodel "cam_lens_ref.smd" "cam_lens_lod1.smd"
}

$CollisionModel "cam_lens_phy.smd"
{
	$mass 20
	$inertia 1
	$concave
}