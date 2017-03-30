// Created by Crowbar 0.36.0.0

$ModelName "BEE2/panels/stairs.mdl"

$BodyGroup "Body"
{
	studio "arm_8panel_body0_model0.smd"
}
$BodyGroup "clamped1"
{
	studio "arm_8panel_body1_model0.smd"
}

$include "skins.qci"

$Attachment "panel_attach_03" "panel_attach_03" 0 0 0 rotate 0 0 0
$Attachment "panel_attach_04" "panel_attach_04" 0 0 0 rotate 0 0 0
$Attachment "panel_attach_01" "panel_attach_01" 0 0 0 rotate 0 0 0
$Attachment "panel_attach_02" "panel_attach_02" 0 0 0 rotate 0 0 0

$CBox 0 0 0 0 0 0

$BBox -191.5 -63.5 -68.09 63.5 63.5 0


$Sequence "idle" {
	"arm_8panel_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "up" {
	"arm_8panel_anims\up.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "down" {
	"arm_8panel_anims\down.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
