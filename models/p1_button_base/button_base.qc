$include "button_base.qci"

$modelname "BEE2/props_p1/floor_button_base.mdl"

$bodygroup "Body"
{
	studio "button_base_reference.smd"
}

$lod 20
{
	replacemodel "button_base_reference.smd" "button_base_lod1.smd"
}
$lod 30
{
	replacemodel "button_base_reference.smd" "button_base_lod2.smd"
}
$lod 50
{
	replacemodel "button_base_reference.smd" "button_base_lod3.smd"
}