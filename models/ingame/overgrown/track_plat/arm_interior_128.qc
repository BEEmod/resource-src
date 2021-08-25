// Created by Crowbar 0.55
$staticprop
$ModelName "BEE2/props_overgrown/track_platform.mdl"

$BodyGroup "default"
{
	studio "arm_interior_128_model.smd"
}

$SurfaceProp "default"

$Contents "solid"

$IllumPosition 0 5.866 -45.254

$MostlyOpaque

$CDMaterials "BEE2/models/props_overgrown/"
$CDMaterials "models/props_destruction/"
$CBox 0 0 0 0 0 0

$BBox -80.207 -64 -90.562 68.474 64 0.054

$Sequence "BindPose" {
	"arm_interior_128_model.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}