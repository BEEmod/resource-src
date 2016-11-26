// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_overgrown/truss_512.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "truss_512_reference.smd"
}


$SurfaceProp "metal"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "BEE2/props_overgrown/triple_wallpipe/"
$renamematerial "truss" "truss_rusty"

$CBox 0 0 0 0 0 0

$BBox -29 -256.25 -32.952 29 256.25 18.465


$Sequence "idle" {
	"truss_512_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "truss_512_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
