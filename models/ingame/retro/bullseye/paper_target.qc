$modelname "BEE2/props_underground/paper_target.mdl"

$bodygroup "target"
{
	studio "target_ref.smd"
}

$origin 0 0 4

$texturegroup "skinfamilies" {
	{ "bullseye_full" }
	{ "bullseye_holes" }
	{ "bullseye_ripped" }
	{ "bullseye_transition" }
}

$cdmaterials "BEE2/models/props_underground/bullseye/"

$sequence "idle" "target_ref.smd"

$collisionmodel "target_phy.smd" {
	$mass 100
	$concave
}
