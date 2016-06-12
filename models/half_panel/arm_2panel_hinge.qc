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


$attachment "panel_attach" "panel_attach" 0 0 0 rotate 0 0 0

$surfaceprop "metalpanel"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 0 -34.045

// $bbox -63.5 -63.5 -68.09 63.5 63.5 0

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0


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

