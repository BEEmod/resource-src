$include "static_cam.qci"

$ModelName "BEE2/cam_parts/cam_base_p1.mdl"

$BodyGroup "studio"
{
	studio "cam_base_ref.smd"
}

$LOD 40
{
	replacemodel "cam_base_ref.smd" "cam_base_lod1.smd"
}

$CollisionModel "cam_base_phy.smd"
{
	$mass 20
	$inertia 1
	$concave
}