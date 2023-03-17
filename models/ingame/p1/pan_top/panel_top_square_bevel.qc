$staticprop
$modelname "BEE2/props_p1/panel_top_square_bevel.mdl"

$BodyGroup "Body"
{
	studio "panel_top_square_bevel_ref.smd"
}

$cdmaterials "BEE2/models/props_p1/"
$sequence idle "panel_top_square_ref"
$surfaceprop "plastic_box"

$collisionmodel "panel_top_square_phy"  {
	$mass 400
}
