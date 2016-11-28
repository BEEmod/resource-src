// Created by Crowbar 0.19.0.0

$modelname "props_ingame/arm_8panel.mdl"

$bodygroup "Body"
{
	studio "arm_8panel_arms_8panel_model.smd"
}

$attachment "panel_attach_03" "panel_attach_03" 0 0 0 rotate 0 0 0
$attachment "panel_attach_04" "panel_attach_04" 0 0 0 rotate 0 0 0
$attachment "panel_attach_01" "panel_attach_01" 0 0 0 rotate 0 0 0
$attachment "panel_attach_02" "panel_attach_02" 0 0 0 rotate 0 0 0

$surfaceprop "metalpanel"

$contents "solid"

$sequence "idle" "arm_8panel_anims\idle.smd" {
	fps 30
}

$sequence "up" "arm_8panel_anims\up.smd" {
	fps 30
}

$sequence "down" "arm_8panel_anims\down.smd" {
	fps 30
}

