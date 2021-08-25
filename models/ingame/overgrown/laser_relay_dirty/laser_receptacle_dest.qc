$ModelName "BEE2/props_ingame/lasers/relay_dest.mdl"

$BodyGroup "Body"
{
	studio "relay_dest_ref.smd"
}

$LOD 15
{
	replacemodel "relay_dest_ref.smd" "relay_dest_ref_lod1.smd"
}
$LOD 40
{
	replacemodel "relay_dest_ref.smd" "relay_dest_ref_lod2.smd"
}
$LOD 80
{
	replacemodel "relay_dest_ref.smd" "relay_dest_ref_lod3.smd"
}

$include "laser_receptacle.qci"