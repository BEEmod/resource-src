// A more 'modern' version of the fizzler, without the wiring parts amoung others.
$ModelName "BEE2/props_ingame/retro_clean_fizz.mdl"

$include "underground_fizzler_wall.qci"


$BodyGroup "default"
{
	studio "retro_clean_fizz_ref.smd"
}

$LOD 50
{
	replacemodel "retro_clean_fizz_ref.smd" "retro_clean_fizz_lod1.smd"
}
$LOD 80
{
	replacemodel "retro_clean_fizz_ref.smd" "retro_clean_fizz_lod2.smd"
}
