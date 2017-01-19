// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_underground/fling_support_single.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "fling_support_01_reference.smd"
}


$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "models/props_underground/"

$CBox 0 0 0 0 0 0

$BBox -0.25 -46.46 -108.906 71.07 46.46 0


$Sequence "idle" {
	"anim_idle.smd"
	fps 30
}

$CollisionModel "fling_support_01_physics.smd"
{
	$mass 5000
}
