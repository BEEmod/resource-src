// Created by Crowbar 0.19.0.0

$modelname "BEE2\props_ingame\sign_frame_1_wback.mdl"

$staticprop

$bodygroup "sign_frame01"
{
	studio "sign_frame01_reference.smd"
}


$cdmaterials "models\props\sign_frame01\"

$surfaceprop "metal"

$contents "solid"

$sequence "idle" "sign_frame01_anims\idle.smd" {
	fps 30
	"ACT_IDLE" 1
}

$collisionmodel "sign_frame01_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
}

