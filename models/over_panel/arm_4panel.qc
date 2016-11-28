// Created by Crowbar 0.19.0.0

$modelname "props_ingame/arm_4panel.mdl"

$bodygroup "Body"
{
	studio "arm_4panel_reference.smd"
}

$attachment "panel_attach" "panel_attach" 0 0 0 rotate 0 0 

$attachment "glass_attach" "glass" 0 0 0 rotate 0 0 0

$surfaceprop "metalpanel"

$contents "solid"


$sequence "idle" "arm_4panel_anims\idle.smd" {
	fps 30
}

$sequence "ramp_30_deg_open" "arm_4panel_anims\ramp_30_deg_open.smd" {
	fps 30
}

$sequence "ramp_30_deg_close" "arm_4panel_anims\ramp_30_deg_close.smd" {
	fps 30
}

$sequence "ramp_45_deg_open" "arm_4panel_anims\ramp_45_deg_open.smd" {
	fps 30
}

$sequence "ramp_45_deg_close" "arm_4panel_anims\ramp_45_deg_close.smd" {
	fps 30
}

$sequence "ramp_60_deg_open" "arm_4panel_anims\ramp_60_deg_open.smd" {
	fps 30
}

$sequence "ramp_60_deg_close" "arm_4panel_anims\ramp_60_deg_close.smd" {
	fps 30
}

$sequence "ramp_90_deg_open" "arm_4panel_anims\ramp_90_deg_open.smd" {
	fps 30
}

$sequence "ramp_90_deg_close" "arm_4panel_anims\ramp_90_deg_close.smd" {
	fps 30
}

