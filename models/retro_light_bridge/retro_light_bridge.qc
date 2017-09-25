
$ModelName "BEE2/props_underground/light_bridge.mdl"

$BodyGroup "Body"
{
	studio "light_bridge_ref.smd"
}

$lod 30 {
	replacemodel "light_bridge_ref" "light_bridge_lod1"
}

$lod 60 {
	replacemodel "light_bridge_ref" "light_bridge_lod2"
}

$SurfaceProp "metal"

$staticprop

$Contents "solid"

$origin 0 0 8

$CDMaterials "BEE2/models/props_underground/"
$CDMaterials "models/props_bts/" // Piping
$CDMaterials "models/props_underground/"

$Sequence "idle" "light_bridge_ref.smd"

$CollisionModel "light_bridge_phy.smd" {
}
