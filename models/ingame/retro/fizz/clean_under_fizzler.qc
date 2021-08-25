// A more 'modern' version of the fizzler, without the wiring parts amoung others.
$ModelName "BEE2/props_ingame/retro_clean_fizz.mdl"

$include "underground_fizzler_wall.qci"

// Allow switching back to the original skin (overgrown)
$texturegroup "skinfamilies" {
	{ "frame_clean" }
	{ "frame" }	
}

$BodyGroup "default"
{
	studio "retro_clean_fizz_ref.smd"
}

 // Original lod1 removes the wiring, that's already gone so we can switch earlier.
$LOD 20
{
	replacemodel "retro_clean_fizz_ref.smd" "retro_clean_fizz_lod1.smd"
}
$LOD 70
{
	replacemodel "retro_clean_fizz_ref.smd" "retro_clean_fizz_lod2.smd"
}
