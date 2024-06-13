$modelname "BEE2/props_clean/motionplatform_rail_512.mdl"

$staticprop

$bodygroup "default"
{
	studio "track_512.smd"
}

$surfaceprop "default"

$contents "solid"

$cdmaterials "models\anim_wp"

$sequence "BindPose" {
	"../../../BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
