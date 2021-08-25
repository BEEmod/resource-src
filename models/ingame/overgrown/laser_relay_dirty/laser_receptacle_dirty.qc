$ModelName "BEE2/props_ingame/lasers/relay_dirty.mdl"

$BodyGroup "Body"
{
	studio "relay_dirty_ref.smd"
}

$LOD 15
{
	replacemodel "relay_dirty_ref.smd" "relay_dirty_ref_lod1.smd"
}
$LOD 40
{
	replacemodel "relay_dirty_ref.smd" "relay_dirty_ref_lod2.smd"
}
$LOD 80
{
	replacemodel "relay_dirty_ref.smd" "relay_dirty_ref_lod3.smd"
}

$include "laser_receptacle.qci"