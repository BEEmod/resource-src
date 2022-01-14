// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_ingame/pgun_pedestal.mdl"

$BodyGroup "Body"
{
	studio "pgun_ped_long_ref.smd"
}
$MostlyOpaque  // So the body can have shadows.
$SurfaceProp "metalgrate"

$Contents "solid"

$CDMaterials "models/props/"

$BBox -16 -16 0 16 16 72

$Sequence "idle" "anims/idle.smd"
$Sequence "inactive" "anims/inactive.smd"

$attachment "gls_back" "bone_glass_tube_01" 0 0 0 rotate 0 135 180
$attachment "gls_front" "bone_glass_tube_02" 0 0 0 rotate 0 135 180
$attachment "pedestal" "head" 0 24 0 rotate 270 0 270

$Sequence "open" {
	"anims/open.smd"
	{
	event AE_CL_PLAYSOUND 0 "Doors.FullOpen9"
	}
}

$Sequence "close" {
	"anims/close.smd"
	{
	event AE_CL_PLAYSOUND 0 "Doors.FullOpen9"
	}
}

$Sequence "retract" {
	"anims/retract.smd"
	{
	event AE_CL_PLAYSOUND 0 "World.RotatingWheatleyPanelLp"
	event AE_CL_STOPSOUND 50 "World.RotatingWheatleyPanelLp"
	event AE_CL_PLAYSOUND 50 "World.RotatingWheatleyPanelStop"
	event AE_CL_PLAYSOUND 69 "World.RotatingWheatleyPanelStop"
	}
}

$CollisionJoints "pgun_ped_long_phys_ref" //"phy.smd"
{
	$mass 120
	$concave
	$concaveperjoint
	$noselfcollisions
	$jointskip "bone_glass_tube_01"
	$jointskip "bone_glass_tube_02"
}
