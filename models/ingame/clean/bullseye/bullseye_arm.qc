
$ModelName "BEE2/props_clean/bullseye_arm.mdl"

$BodyGroup "default"
{
	studio "bullseye_arm_ref.smd"
}

// $LOD 40
// {
// 	replacemodel "arm_exterior_model.smd" "arm_exterior_model_lod1.smd"
// 	replacebone "panel_mover" "ik_03"
// 	NoFacial
// }
// $LOD 60
// {
// 	replacemodel "arm_exterior_model.smd" "arm_exterior_model_lod2.smd"
// 	replacebone "panel_mover" "ik_03"
// 	NoFacial
// }

$SurfaceProp "default"

$Contents "solid"

// $IllumPosition -2.355 7.404 -48.778

$CDMaterials "models\anim_wp"

$Attachment "panel_attach" "panel_mover" 0 4.68 0 rotate -90 90 0
$Attachment "attach_1" "attach_1" 0 0 0 rotate 0 90 0
$Attachment "attach_2" "attach_2" 0 0 0 rotate 0 90 0

$Sequence "idle" {
	"anims\install.smd"
	frame 1 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "install" {
	"anims\install.smd"
	// { event AE_CL_PLAYSOUND 1 "World.RobotRatchetMd" }
	// { event AE_CL_PLAYSOUND 0 "World.RobotSynthPillShortBlanks" }
	// { event AE_CL_PLAYSOUND 3 "World.RobotHighSpeedMotorSm" }
	// { event AE_CL_PLAYSOUND 12 "World.RobotIBeamImpact" }
	// { event AE_CL_PLAYSOUND 27 "World.RobotAirReleaseBlanks" }
	// { event AE_CL_PLAYSOUND 19 "World.RobotSynthPillShortBlanks" }
	fadein 0.2
	fadeout 0.2
	fps 24
}
