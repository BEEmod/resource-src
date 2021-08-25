// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_overgrown/truss_1024.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "truss_1024_reference.smd"
}


$SurfaceProp "metal"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "BEE2/models/props_overgrown/"
$renamematerial "truss" "truss_rusty"

$CBox 0 0 0 0 0 0

$BBox -29 -512.25 -32.952 29 512.25 18.465


$Sequence "idle" {
	"truss_1024_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "truss_1024_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave

}
