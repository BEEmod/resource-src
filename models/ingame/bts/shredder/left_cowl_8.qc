$modelname "BEE2/props_bts/shredder/left_cowl_8.mdl"

$staticprop

$origin -57.4779 0 -100.881

$bodygroup "default"
{
	studio "left_cowl_8.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition -57.4779 0 -100.881

$cdmaterials "models/props_gameplay/" "BEE2/models/props_overgrown/"

$texturegroup "skinfamiles" {
	{ "shredder" }
	{ "shredder_rusty" }
}

$sequence "BindPose" {
	"BindPose.smd"
	fps 30
}

