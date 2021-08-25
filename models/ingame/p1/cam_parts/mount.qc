$include "static_cam.qci"

$ModelName "BEE2/cam_parts/cam_mount_p1.mdl"

$origin 0 -22.181638 11.524537

$BodyGroup "studio"
{
	studio "cam_mount_ref.smd"
}

$LOD 40
{
	replacemodel "cam_mount_ref.smd" "cam_mount_lod1.smd"
}

$CollisionModel "cam_mount_phy.smd"
{
	$mass 20
	$inertia 1
	$concave
}