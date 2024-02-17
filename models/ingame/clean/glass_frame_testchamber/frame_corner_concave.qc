$modelname "BEE2/props_clean/frame_testchamber/frame_concave.mdl"

$staticprop

$bodygroup "Body"
{
	studio "frame_corner_concave_ref.smd"
}

$origin -2 4 2

$surfaceprop "metal"

$contents "solid"

$cdmaterials "models\props_lab\"

$sequence "idle" {
	"frame_corner_concave_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "frame_corner_concave_phy.smd"
{
	$mass 10
}
