$staticprop
$ModelName "BEE2/props_clean/barrier_hole_medium.mdl"

$BodyGroup "body"
{
	studio "barrier_hole_med_ref.smd"
}

$surfaceprop "default" // Match others.
$cdmaterials "models/props_ingame/"

$sequence "idle" "barrier_hole_med_ref.smd"

$CollisionModel "barrier_hole_med_phy.smd"
{
	$mass 80
	$concave
}
