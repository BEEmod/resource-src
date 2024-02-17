// Created by Crowbar 0.74

$modelname "BEE2/props_clean/window_frame_system/straight_24.mdl"

$staticprop

$bodygroup "body"
{
	studio "window_frame_system_24.smd"
}

$surfaceprop "default"

$contents "solid"

$cdmaterials "models\props_ingame"

$sequence "ref" {
	"anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "window_frame_system_24_physics.smd"
{
	$mass 24
}
