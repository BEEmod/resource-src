// Created by Crowbar 0.68

$ModelName "props_underground/door_bipart_lower_128.mdl"

$StaticProp

$BodyGroup "default"
{
	studio "door_bipart_lower_128_model.smd"
}


$SurfaceProp "default"

$Contents "solid"

$IllumPosition 0 1 30.75

$CDMaterials "models\props_underground"
$CDMaterials ""

$CBox 0 0 0 0 0 0

$BBox -4.25 -66.25 -2.25 2 66.25 61.75

$DefineBone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$Sequence "BindPose" {
	"door_bipart_lower_128_anims\BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "door_bipart_lower_128_physics.smd"
{
	$mass 1098.851
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}

$CollisionText
{
	collisionText 
	{
	}
}
