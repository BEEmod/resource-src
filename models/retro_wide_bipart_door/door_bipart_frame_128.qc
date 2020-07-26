// Created by Crowbar 0.68

$ModelName "props_underground/door_bipart_frame_128.mdl"

$StaticProp

$BodyGroup "default"
{
	studio "door_bipart_frame_128_model.smd"
}


$SurfaceProp "default"

$Contents "solid"

$IllumPosition 0 0 64

$CDMaterials "models\props_underground"
$CDMaterials ""

$CBox 0 0 0 0 0 0

$BBox -10.25 -74.25 -10.25 10.25 74.25 138.25

$DefineBone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$Sequence "BindPose" {
	"door_bipart_frame_128_anims\BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "door_bipart_frame_128_physics.smd"
{
	$mass 3618.263
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}

$CollisionText
{
	collisionText 
	{
	}
}
