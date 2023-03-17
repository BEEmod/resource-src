$staticprop
$modelname "BEE2/props_p1/panel_top_stair.mdl"

$BodyGroup "Body"
{
	studio "panel_top_stair_ref.smd"
}

$cdmaterials "BEE2/models/props_p1/"
$sequence idle "panel_top_stair_ref"
$surfaceprop "plastic_box"

$collisionmodel "panel_top_stair_phy"  {
	$mass 400
}
