$include "camera_shared.qci"

$modelname "BEE2/cam_parts/cam_truss_retro.mdl"

$bodygroup "camera"
{
	studio "cam_truss_ref.smd"
}

$collisionmodel "cam_truss_phy.smd" {
	$concave
}
