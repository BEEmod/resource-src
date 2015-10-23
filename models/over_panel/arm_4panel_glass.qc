// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/over_panel/glass_pan.mdl"

$bodygroup "Body"
{
	studio "arm_4panel_glass_reference.smd"
}

$cdmaterials "BEE2/models/props_ingame/" "models/anim_wp/" "metal/" "models/props_destruction/"

$attachment "panel_attach" "panel_attach" 0 0 0 rotate 0 0 0

$surfaceprop "glass"
$jointsurfaceprop "arms_4panel_root" "metalgrate" // The grating surface underneath
$jointsurfaceprop "panel_attach" "solidmetal"
$jointsurfaceprop "armA_top03" "glass"

$contents "solid"

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
