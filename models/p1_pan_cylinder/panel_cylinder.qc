// The high-vertex part of P1 angled panels - the white cylinder and clamp.
// Do that in a model to make it have better detail.

$staticprop
$modelname "BEE2/props_p1/panel_cylinder.mdl"
$scale "0.25"

$BodyGroup "Body"
{
	studio "panel_cylinder_ref.smd"
}

$lod 30
{
	replacemodel "panel_cylinder_ref.smd" "panel_cylinder_lod1.smd"
}

$renamematerial "metalwall_bts_006a" "metalwall_bts_6"
$renamematerial "plasticwall001a" "plasticwall_1"
$renamematerial "plasticwall004a" "plasticwall_4"

$cdmaterials "BEE2/models/props_p1/"
$sequence idle "panel_cylinder_ref"
$surfaceprop "metal"

$collisionmodel "panel_cylinder_phys"  {
	$mass 25
}
