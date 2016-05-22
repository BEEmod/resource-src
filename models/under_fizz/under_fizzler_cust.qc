$ModelName "BEE2/props_ingame/retro_cust_fizz.mdl"

$include "underground_fizzler_wall.qci"


$BodyGroup "default"
{
	studio "cust_under_fizz_ref.smd"
}

$LOD 50 // orig - 30
{
	replacemodel "cust_under_fizz_ref.smd" "cust_under_fizz_lod1.smd"
}
$LOD 80 // orig - 50
{
	replacemodel "cust_under_fizz_ref.smd" "cust_under_fizz_lod2.smd"
}
