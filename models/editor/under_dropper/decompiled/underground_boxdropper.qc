// Created by Crowbar 0.36.0.0

$ModelName "props_underground/underground_boxdropper.mdl"

$BodyGroup "default"
{
	studio "underground_boxdropper_reference.smd"
}


$SurfaceProp "default"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "models\props_underground"
$CDMaterials ""

$CBox 0 0 0 0 0 0

$BBox -64 -64 -9.25 64.019 64 67.438


$Sequence "BindPose" {
	"underground_boxdropper_anim_@BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "open" {
	"underground_boxdropper_anim_@open.smd"
	{ event AE_CL_PLAYSOUND 0 "World.UndergroundCubeTrapDoorOpenPt1" }
	{ event AE_CL_PLAYSOUND 40 "World.UndergroundCubeTrapDoorOpenPt2" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "open_idle" {
	"underground_boxdropper_anim_@open_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "close_idle" {
	"underground_boxdropper_anim_@close_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "close" {
	"underground_boxdropper_anim_@close.smd"
	{ event AE_CL_PLAYSOUND 6 "World.UndergroundCubeTrapDoorClose" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$CollisionJoints "underground_boxdropper_physics.smd"
{
	$mass 2574.293
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone "underground_trapdoor_root"
	$concave


	$jointconstrain "underground_trapdoor_door" x limit 0 0 0
	$jointconstrain "underground_trapdoor_door" y limit 0 0 0
	$jointconstrain "underground_trapdoor_door" z limit 0 0 0
}

$CollisionText
{
	collisionText 
	{
	}
}

$KeyValues
{
}
