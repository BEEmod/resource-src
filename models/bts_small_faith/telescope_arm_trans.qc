// Created by Crowbar 0.34.0.0

$ModelName "BEE2/panels/panel_faith_small.mdl"

$BodyGroup "default"
{
	studio "telescope_arm_trans_reference.smd"
}

$LOD 50
{
	replacemodel "telescope_arm_trans_reference.smd" "telescope_arm_trans_model_lod1.smd"
}

$texturegroup "textures"
{   
	{
	"circle_shield_main"
	}
	{
	"circle_shield_red_lit"
	}
}

$mostlyopaque

$cdmaterials "models/anim_wp/circle_shield/" "BEE2/models/props_ingame/"

$SurfaceProp "glass"

$Contents "solid"

$Attachment "panel_attach" "telescope_lift_10" 0 0 0 rotate -90 -90 0

$CBox 0 0 0 0 0 0

$BBox -104.877 -31.915 -40.761 0 32.085 31.962


$Sequence "BindPose" {
	"telescope_arm_trans_anims\BindPose.smd"
	fps 30
}

$Sequence "idle" {
	"telescope_arm_trans_anims\idle.smd"
	fps 24
}

$Sequence "90degdown" {
	"telescope_arm_trans_anims\90degdown.smd"
	{ event AE_CL_PLAYSOUND 0 "World.CatapultLaunch"}
	
	{ event AE_CL_PLAYSOUND 2 "World.RobotHydraulicsClose20f" }
	{ event AE_CL_PLAYSOUND 2 "World.RobotHighSpeedMotorSm" }
	{ event AE_CL_PLAYSOUND 3 "World.RobotIBeamArmSlide" }
	{ event AE_CL_PLAYSOUND 15 "World.RobotPanelImpact" }
	{ event AE_CL_PLAYSOUND 13 "World.RobotAirRelease" }
	{ event AE_CL_PLAYSOUND 10 "World.RobotRatchetArmDown" }
	fps 30
}

$Sequence "straightdown" {
	"telescope_arm_trans_anims\straightdown.smd"
	{ event AE_CL_PLAYSOUND 0 "World.CatapultLaunch"}
	
	{ event AE_CL_PLAYSOUND 1 "World.RobotMetalPillShort" }
	{ event AE_CL_PLAYSOUND 1 "World.RobotHydraulicsClose20f" }
	{ event AE_CL_PLAYSOUND 4 "World.RobotIBeamSlide" }
	{ event AE_CL_PLAYSOUND 16 "World.RobotPanelImpact" }
	{ event AE_CL_PLAYSOUND 15 "World.RobotAirRelease" }
	{ event AE_CL_PLAYSOUND 5 "World.RobotIBeamArmSlide" }
	{ event AE_CL_PLAYSOUND 2 "World.RobotArmMotorDown" }
	fps 30
}