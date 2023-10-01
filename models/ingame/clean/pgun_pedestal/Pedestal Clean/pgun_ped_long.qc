$ModelName "BEE2/props_clean/pgun_pedestal.mdl"

$BodyGroup "Body"
{
	studio "pgun_ped_long_reference.smd"
}
$MostlyOpaque  // So the body can have shadows.
$SurfaceProp "metalgrate"

$Contents "solid"

$CDMaterials "bee2/models/props_clean/"
//$CDMaterials "models/props/"

$attachment "pgun" "head" 0.0 30.0 -14.0 rotate -90.0 270.0 0.0

$Sequence "idle" "anims/idle.smd"
$Sequence "inactive" "anims/inactive.smd"

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

$CollisionJoints "pgun_ped_long_physics" //"phy.smd"
{
	$mass 120
	$concave
	$concaveperjoint
	$noselfcollisions
	$jointskip "bone_glass_tube_01"
	$jointskip "bone_glass_tube_02"
}
