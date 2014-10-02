// Created by Crowbar 0.19.0.0

$modelname "props_ingame/tspen/arm_4panel_static_45.mdl"

$bodygroup "Body"
{
	studio "arm_4panel_reference.smd"
}

$cdmaterials "models/anim_wp/"

$texturegroup "skinfamilies"
{
	{
		"arm_64x64"
		"arm64x64_rail"
	}
	{
		"arm_64x64_rusty"
		"arm64x64_rail"
	}
	{
		"arm_64x64_rusty"
		"nodraw_model"
	}
}

$staticprop
// Model uses material "models\anim_wp\arm_64x64.vmt"
// Model uses material "models\anim_wp\arm64x64_rail.vmt"

$attachment "panel_attach" "panel_attach" 0 0 0 rotate 0 0 0

$surfaceprop "metalpanel"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 0 -34.045

// $bbox -63.5 -63.5 -68.09 63.5 63.5 0

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.

$sequence "idle" "arm_4panel_anims\ramp_45_deg.smd" {
	fps 30
}
