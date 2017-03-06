$modelname "BEE2/props_overgrown/angled_pan.mdl"

$bodygroup "Body"
{
	studio "arm_4panel_reference.smd"
}

$texturegroup "skinfamilies" {
	{ "arm_64x64_rusty" }
	{ "arm_64x64_rusty_error" }
	{ "arm_64x64_rusty_off" }
}

// For: arm64 skin, railing (black-wall)
$cdmaterials "models/anim_wp/" "metal/"

$attachment "panel_attach" "panel_attach" -32 0 -32 rotate 90 90 0

$surfaceprop "solidmetal"
$jointsurfaceprop "arms_4panel_root" "metalgrate" // The grating surface underneath
$jointsurfaceprop "panel_attach" "solidmetal"
$jointsurfaceprop "armA_top03" "solidmetal"

$contents "solid"

$opaque

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

$collisionjoints "glass_pan_clip.smd" {
	$mass 5000
	$noselfcollisions
}
