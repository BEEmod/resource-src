$modelname "BEE2\props_ingame\sign_frame_1_wback.mdl"

$staticprop

$bodygroup "Body"
{
	studio "sign_frame_1_wback_reference.smd"
}

$cdmaterials "models\props\sign_frame01\"

$surfaceprop "metal"

$contents "solid"

$sequence "idle" {
	"anims\idle.smd"
	"ACT_IDLE" 1
}

$collisionmodel "sign_frame_1_wback_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
}

