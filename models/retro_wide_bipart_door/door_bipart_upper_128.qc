// Created by Crowbar 0.68

$ModelName "props_underground/door_bipart_upper_128.mdl"

$StaticProp

$BodyGroup "default"
{
	studio "door_bipart_upper_128_model.smd"
}


$SurfaceProp "default"

$Contents "solid"

$IllumPosition 0 -1 64

$CDMaterials "models\props_underground"
$CDMaterials ""

$CBox 0 0 0 0 0 0

$BBox -2 -66.25 0 4.25 66.25 130.25

$DefineBone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$Sequence "BindPose" {
	"door_bipart_upper_128_anims\BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "door_bipart_upper_128_physics.smd"
{
	$mass 1289.203
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
