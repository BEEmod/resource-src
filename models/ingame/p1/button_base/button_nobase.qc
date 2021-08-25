$include "button_base.qci"

$modelname "BEE2/props_p1/floor_button_nobase.mdl"

$bodygroup "Body"
{
	studio "button_nobase.smd"
}

$lod 20
{
	replacemodel "button_nobase.smd" "button_nobase_lod1.smd"
}
$lod 30
{
	replacemodel "button_nobase.smd" "button_nobase_lod2.smd"
}
$lod 50
{
	replacemodel "button_nobase.smd" "button_nobase_lod3.smd"
}