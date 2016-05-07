$include "button_base.qci"

$modelname "BEE2/props_p1/sphere_button_base.mdl"

$bodygroup "Body"
{
	studio "button_nobase_scaled.smd"
}

$lod 20
{
	replacemodel "button_nobase_scaled.smd" "button_nobase_scaled_lod1.smd"
}
$lod 30
{
	replacemodel "button_nobase_scaled.smd" "button_nobase_scaled_lod2.smd"
}
$lod 50
{
	replacemodel "button_nobase_scaled.smd" "button_nobase_scaled_lod3.smd"
}