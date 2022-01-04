$staticprop
$ModelName "BEE2/props_clean/barrier_hole_large.mdl"

$BodyGroup "body"
{
	studio "barrier_hole_lrg_ref.smd"
}

$surfaceprop "default" // Match others.
$cdmaterials "models/props_ingame/"

$sequence "idle" "barrier_hole_lrg_ref.smd"

$CollisionModel "barrier_hole_lrg_phy.smd"
{
	$mass 40
	$concave
}
