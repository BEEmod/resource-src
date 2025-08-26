$modelname "BEE2/panels/heavy_top.mdl"

$staticprop

$bodygroup "Body"
{
	studio "panel_ref.smd"
}

$cdmaterials "models/anim_wp/" // arm64
$cdmaterials "BEE2/models/props_clean/" // squarebeams
$cdmaterials "models/a4_destruction/" // backpanels

$surfaceprop "metalpanel"

$sequence "idle" "panel_ref.smd" {
	fps 30
}
