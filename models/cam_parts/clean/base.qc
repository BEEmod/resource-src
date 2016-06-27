$include "static_cam.qci"

$ModelName "BEE2/cam_parts/cam_base_clean.mdl"

$BodyGroup "studio"
{
	studio "cam_base_ref.smd"
}

$LOD 15
{
	replacemodel "cam_base_ref.smd" "cam_base_ref_lod1.smd"
}
$LOD 60
{
	replacemodel "cam_base_ref.smd" "cam_base_ref_lod2.smd"
}