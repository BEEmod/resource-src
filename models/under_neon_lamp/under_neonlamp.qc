// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_underground/neon_lamp_cold.mdl"

$StaticProp

$BodyGroup "default"
{
	studio "under_neonlamp_reference.smd"
}


$SurfaceProp "default"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "models/props_lights" "BEE2/models/props_underground"

$CBox 0 0 0 0 0 0

$BBox -3.5 -62.75 -0.25 3.5 46.125 6.94


$Sequence "BindPose" {
	"anim_BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "under_neonlamp_physics.smd"
{
	$mass 143.935
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
}
