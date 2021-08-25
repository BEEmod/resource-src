// Swaps the image on the bottom for different cube types.

$ModelName "BEE2/props_underground/dropper_altsigns.mdl"

$BodyGroup "dp"
{
	studio "underground_boxdropper_model.dmx"
}

$SurfaceProp "wood"

$Contents "solid"

$IllumPosition 0 0 29

$CDMaterials "BEE2/models/props_underground/"
$CDMaterials "models/props_underground"

$CBox 0 0 0 0 0 0

$BBox -64 -64 -9.25 64.019 64 67.438

// $DefineBone "underground_trapdoor_root" "" 0 0 0 0 0 0 0 0 0 0 0 0
// $DefineBone "underground_trapdoor_door" "underground_trapdoor_root" 0 -8.494574 47.125 0 0 0 0 0 0 0 0 0
// $DefineBone "underground_trapdoor_end" "underground_trapdoor_door" 0 7.494574 -88.125 0 0 0 0 0 0 0 0 0

$texturegroup "skinfamilies" {
	{ "cubedropper_companion" }
	{ "cubedropper_reflect" }
	{ "cubedropper_sphere" }
}

$Sequence "BindPose" {
	"underground_boxdropper_anims\BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "open" {
	"underground_boxdropper_anims\open.smd"
	{ event AE_CL_PLAYSOUND 0 "World.UndergroundCubeTrapDoorOpenPt1" }
	{ event AE_CL_PLAYSOUND 40 "World.UndergroundCubeTrapDoorOpenPt2" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "open_idle" {
	"underground_boxdropper_anims\open_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "close_idle" {
	"underground_boxdropper_anims\close_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "close" {
	"underground_boxdropper_anims\close.smd"
	{ event AE_CL_PLAYSOUND 6 "World.UndergroundCubeTrapDoorClose" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

// We don't use the collisions.
// $CollisionJoints "underground_boxdropper_physics.smd"
// {
// 	$mass 2574.293
// 	$inertia 1
// 	$damping 0
// 	$rotdamping 0
// 	$concave
// 	$maxconvexpieces 5
// }

