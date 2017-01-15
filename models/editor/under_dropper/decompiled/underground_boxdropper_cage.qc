// Created by Crowbar 0.36.0.0

$ModelName "props_underground/underground_boxdropper_cage.mdl"

$StaticProp

$BodyGroup "default"
{
	studio "underground_boxdropper_cage_reference.smd"
}


$SurfaceProp "default"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "models\props_underground"
$CDMaterials ""

$CBox 0 0 0 0 0 0

$BBox -78 -78 -0.25 78 78 96


$Sequence "BindPose" {
	"underground_boxdropper_cage_anim_@BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "underground_boxdropper_cage_physics.smd"
{
	$mass 18538.57
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}

$CollisionText
{
	collisionText 
	{
	}
}
