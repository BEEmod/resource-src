// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_clean/tractor_beam_back_oran.mdl"

$BodyGroup "default"
{
	studio "tbeam_back_ref.smd"
}

$SurfaceProp "default"

$staticprop

$Contents "solid"

$MaxEyeDeflection 90

$MostlyOpaque

$CDMaterials "BEE2/models/props_clean/"
$CBox 0 0 0 0 0 0

$Sequence "BindPose" {
	"tbeam_back_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
