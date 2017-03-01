// Glass curved to fit the monitor, and also without safety stripes.

$ModelName "BEE2/props_ingame/monitor_glass.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "glass_fracture_ref.smd"
}

$Sequence "idle" "glass_fracture_ref.smd"

$SurfaceProp "glass"

$MostlyOpaque

$CDMaterials "models/props_destruction/"
$CDMaterials "BEE2/models/props_ingame/"
