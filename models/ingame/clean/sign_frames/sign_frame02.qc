// Created by Crowbar 0.19.0.0

$modelname "BEE2\props_ingame\sign_frame_2_wback.mdl"

$staticprop

$bodygroup "sign_frame02"
{
	studio "sign_frame02_reference.smd"
}

$cdmaterials "models\props\sign_frame02\"

$surfaceprop "metal"

$contents "solid"


$sequence "idle" "sign_frame02_anims\idle.smd" {
	fps 30
	"ACT_IDLE" 1
}

$collisionmodel "sign_frame02_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

