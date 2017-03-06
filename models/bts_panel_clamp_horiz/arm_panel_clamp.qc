// Created by Crowbar 0.36.0.0

$ModelName "backstock/arm_panel_clamp_horiz.mdl"

$BodyGroup "default"
{
	studio "arm_panel_clamp_reference.smd"
}


$SurfaceProp "metal"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "models/anim_wp/"

$Attachment "panel_attach" "panel_mover" 0 0 0 rotate 0 0 0

$CBox 0 0 0 0 0 0

$BBox -52.709 -26.102 -208.621 23.522 31.402 0


$Sequence "BindPose" {
	"arm_panel_clamp_anim_@BindPose.smd"
	fps 30
}

$Sequence "swing02" {
	"arm_panel_clamp_anim_@swing02.smd"
	fps 24
}

$Sequence "swing03" {
	"arm_panel_clamp_anim_@swing03.smd"
	fps 24
}

$Sequence "swing04" {
	"arm_panel_clamp_anim_@swing04.smd"
	fps 24
}

$Sequence "swing_idle" {
	"arm_panel_clamp_anim_@swing_idle.smd"
	fps 24
}

$Sequence "swing01" {
	"arm_panel_clamp_anim_@swing01.smd"
	fps 24
}
