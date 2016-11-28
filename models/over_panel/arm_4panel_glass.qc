// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_overgrown/glass_pan.mdl"

$bodygroup "Body"
{
	studio "arm_4panel_glass_reference.smd"
}

$texturegroup "skinfamilies" {
	{ "arm_64x64_rusty" }
	{ "arm_64x64_rusty_error" }
	{ "arm_64x64_rusty_off" }
}

// For: shattered glass, arm64 skin, railing (black-wall), glass-fracture
$cdmaterials "BEE2/models/props_ingame/" "models/anim_wp/" "metal/" "models/props_destruction/"

$attachment "panel_attach" "panel_attach" -32 0 -32 rotate 90 90 0

$surfaceprop "glass"
$jointsurfaceprop "arms_4panel_root" "metalgrate" // The grating surface underneath
$jointsurfaceprop "panel_attach" "solidmetal"
$jointsurfaceprop "armA_top03" "brokenglass"

$contents "solid"

$mostlyopaque

$sequence "idle" "arm_4panel_glass_anims\idle.smd" {
	fps 30
}

$sequence "ramp_30_deg_open" "arm_4panel_glass_anims\ramp_30_deg_open.smd" {
	fps 30
}

$sequence "ramp_30_deg_close" "arm_4panel_glass_anims\ramp_30_deg_close.smd" {
	fps 30
}

$sequence "ramp_45_deg_open" "arm_4panel_glass_anims\ramp_45_deg_open.smd" {
	fps 30
}

$sequence "ramp_45_deg_close" "arm_4panel_glass_anims\ramp_45_deg_close.smd" {
	fps 30
}

$sequence "ramp_60_deg_open" "arm_4panel_glass_anims\ramp_60_deg_open.smd" {
	fps 30
}

$sequence "ramp_60_deg_close" "arm_4panel_glass_anims\ramp_60_deg_close.smd" {
	fps 30
}

$sequence "ramp_90_deg_open" "arm_4panel_glass_anims\ramp_90_deg_open.smd" {
	fps 30
}

$sequence "ramp_90_deg_close" "arm_4panel_glass_anims\ramp_90_deg_close.smd" {
	fps 30
}

$collisionjoints "glass_pan_clip.smd" {
	$mass 5000
	$noselfcollisions
}
