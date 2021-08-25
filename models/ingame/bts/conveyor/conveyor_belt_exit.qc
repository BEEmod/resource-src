// Created by Crowbar 0.34.0.0

$ModelName "BEe2/props_bts/conveyor_flange.mdl"

$StaticProp

$scale 0.5

$BodyGroup "default"
{
	studio "conveyor_belt_exit_reference.smd"
}

$SurfaceProp "default"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials ""

$CBox 0 0 0 0 0 0

$BBox -0.25 -128.653 -16.25 28 128.653 188.625


$Sequence "BindPose" {
	"conveyor_belt_exit_anims\BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "conveyor_belt_exit_physics.smd"
{
	$mass 9971.212
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

$CollisionText
{
	collisionText 
	{
	}
}
