// The high-vertex part of P1 angled panels - the white cylinder and clamp.
// Do that in a model to make it have better detail.

$staticprop
$modelname "BEE2/props_p1/panel_cylinder.mdl"

$BodyGroup "Body"
{
	studio "panel_cylinder_ref.smd"
}

$lod 30
{
	replacemodel "panel_cylinder_ref.smd" "panel_cylinder_lod1.smd"
}

$cdmaterials "BEE2/models/props_p1/"
$sequence idle "panel_cylinder_ref"
$surfaceprop "plastic_box"

$collisionmodel "panel_cylinder_phys"  {
	$mass 25
}
