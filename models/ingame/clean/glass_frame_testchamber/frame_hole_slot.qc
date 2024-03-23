$modelname "BEE2/props_clean/frame_testchamber/frame_hole_slot.mdl"

$staticprop

$bodygroup "Body"
{
	studio "frame_hole_slot_ref.smd"
}

$surfaceprop "metal"

$contents "solid"

$cdmaterials "models\props_lab\"

$sequence "idle" {
	"frame_hole_slot_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "frame_hole_slot_phy.smd"
{
	$mass 60
	$concave
}
