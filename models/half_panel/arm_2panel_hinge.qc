// Created by Crowbar 0.19.0.0

$modelname "BEE2/panels/arm_2panel_hinge.mdl"

$bodygroup "Body"
{
	studio "arm_2panel_hinge.smd"
}

$cdmaterials "models/anim_wp/"

// Model uses material "models\anim_wp\arm_64x64.vmt"
// Model uses material "models\anim_wp\arm64x64_rail.vmt"

$texturegroup "skinfamilies"
{
	{
		"arm_64x64"
	}
	{
		"arm_64x64_rusty"
	}
	{
		"arm_64x64_error"
	}
	{
		"arm_64x64_rusty_error"
	}
	{
		"arm_64x64_off"
	}
	{
		"arm_64x64_rusty_off"
	}
}

$origin 0 -32 0

$attachment "panel_attach" "panel_attach" -32 0 -64 rotate 0 0 0

$surfaceprop "metalpanel"

$contents "solid"

$illumposition -32 -8 -64 "panel_attach"

$bbox -31.5 -63.5 -70 31.5 63.5 63.5

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

