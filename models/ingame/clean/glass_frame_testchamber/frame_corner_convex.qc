$modelname "BEE2/props_clean/frame_testchamber/frame_convex.mdl"

$staticprop

$bodygroup "Body"
{
	studio "frame_corner_ref.smd"
}

$surfaceprop "metal"

$contents "solid"

$cdmaterials "models\props_lab\"

$sequence "idle" {
	"frame_corner_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "frame_corner_phy.smd"
{
	$mass 10
	$concave
}
