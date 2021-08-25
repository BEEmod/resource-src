// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_overgrown/coop_assembly_station.mdl"

$BodyGroup "default"
{
	studio "assembly_station_reference.smd"
}


$SurfaceProp "metal"

$Contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $IllumPosition 0 17.056 98.839

$MostlyOpaque

$CDMaterials "BEE2/models/props_overgrown/assembly_station/"

$TextureGroup "skinfamilies"
{
	{ "assembly_machine_blue2"      "assembly_machine_blue"   }
	{ "assembly_machine_orange2"   "assembly_machine_orange" }
	{ "assembly_machine_blue2_off"      "assembly_machine_blue_off"   }
	{ "assembly_machine_orange2_off"   "assembly_machine_orange_off" }
}

// This list shows the VMT file names used in the SMD files.
// "models\player\coop_bots\assembly_machine_blue2.vmt"
// "models\player\coop_bots\assembly_machine_blue.vmt"
// "models\player\coop_bots\assembly_machine_top.vmt"
// "models\player\coop_bots\assembly_machine_glass.vmt"
// "models\player\coop_bots\assembly_machine_orange.vmt"
// "models\player\coop_bots\assembly_machine_orange2.vmt"

// Clipping box or view bounding box.
$CBox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$BBox -89.508 -96 -34.522 55.396 96 232.2

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $HBoxSet "default"
// $HBox 0 "assembly_station_model" -96 -19 -89.507866 96 223.244431 55.395966 ""
// $HBox 0 "A_door_R" 0 -13.415893 -36.693241 18.504923 14.018681 0 ""
// $HBox 0 "C_cover_R" -41.974224 0 -28.391842 0 28.336029 0 ""
// $HBox 0 "B_cover_L" 0 0 -28.420967 41.966293 56.333969 0 ""
// $HBox 0 "arm_doorsR" -27.317738 0 -3.485468 6.036201 93.551193 9.505079 ""
// $HBox 0 "B_door_R" -38.086006 0 -38.085987 0 77.840668 32.983456 ""
// $HBox 0 "C_cover_L" 0 0 -28.420967 41.966293 28.336029 0 ""
// $HBox 0 "piston_racks" -33.068916 -9.142708 -10.322018 33.068916 96.20047 0.602637 ""
// $HBox 0 "A_rack_L" 0 0 -27.356531 54.755726 93.559952 39.922348 ""
// $HBox 0 "arm_swingerR" 0 0 -21.99753 82.357948 93.551193 0 ""
// $HBox 0 "C_door_R" -38.086006 -15.522057 -38.085987 0 16.605438 32.983456 ""
// $HBox 0 "A_cover_L" 0 0 -28.420967 41.966293 86.586693 0 ""
// $HBox 0 "joint1a3" -3.632362 -1.075221 -34.272449 32.318165 0.184999 1.957687 ""
// $HBox 0 "joint1a6" -3.632365 -1.075205 -34.272499 32.318146 0.185007 1.957651 ""
// $HBox 0 "joint1a5" -3.632337 -1.075214 -34.272507 32.318176 0.184999 1.957644 ""
// $HBox 0 "A_rack_R" -39.922348 0 -54.755722 27.356522 93.559952 0 ""
// $HBox 0 "B_door_L" -32.983456 0 -0.000008 38.085983 77.840668 38.086006 ""
// $HBox 0 "B_rack_R" -39.922348 0 -54.755722 27.377869 61.348244 0 ""
// $HBox 0 "joint1a7" -3.632353 -1.075207 -34.27248 32.318165 0.185013 1.957663 ""
// $HBox 0 "A_door_L" 0 -13.415895 -18.504936 36.69323 14.018688 0 ""
// $HBox 0 "C_door_L" -32.983456 -15.522057 -0.000008 38.085983 16.605438 38.086006 ""
// $HBox 0 "joint1a1" -3.632354 -1.07519 -34.272503 32.318165 0.185031 1.957653 ""
// $HBox 0 "C_rack_R" -39.922348 0 -54.755722 27.377869 31.323771 0 ""
// $HBox 0 "B_rack_L" 0 0 -27.377882 54.755726 61.348244 39.922348 ""
// $HBox 0 "joint1a2" -3.632345 -1.075206 -34.272511 32.318169 0.185008 1.957654 ""
// $HBox 0 "A_cover_R" -41.96629 0 -28.420979 0 86.5867 0 ""
// $HBox 0 "arm_doorsL" -6.036201 0 -3.485468 27.317738 93.551193 9.505079 ""
// $HBox 0 "joint1a" -3.632336 -1.075199 -34.272522 32.318184 0.185016 1.957642 ""
// $HBox 0 "C_rack_L" 0 0 -27.377882 54.755726 31.323771 39.922348 ""
// $HBox 0 "B_cover_R" -41.96629 0 -28.420975 0 56.333969 0 ""
// $HBox 0 "joint1a8" -3.632339 -1.075193 -34.272476 32.318176 0.185025 1.957666 ""
// $HBox 0 "arm_swingerL" -82.357948 0 -21.99753 0 93.551193 0 ""
// $HBox 0 "joint1a4" -3.632337 -1.07522 -34.272495 32.318165 0.184996 1.957656 ""
// $HBox 0 "joint3" -12.631242 -4.164593 -1.694984 12.631233 35.379898 1.054703 ""


$SectionFrames 30 300

$Sequence "BindPose" {
	"anim_BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "assembly_station_disassemble" {
	"anim_disassemble.smd"
	{ event AE_CL_PLAYSOUND 0 "World.RobotAirRelease" }
	{ event AE_CL_PLAYSOUND 0 "World.RobotMetalPill" }
	{ event AE_CL_PLAYSOUND 7 "World.RobotPlaintiveMotorMd" }
	{ event AE_CL_PLAYSOUND 11 "World.RobotPlaintiveMotorSm" }
	{ event AE_CL_PLAYSOUND 16 "World.RobotIBeamSlidePitched" }
	{ event AE_CL_PLAYSOUND 59 "World.RobotIBeamSlidePitched" }
	{ event AE_CL_PLAYSOUND 52 "World.RobotPlaintiveMotorMd" }
	{ event AE_CL_PLAYSOUND 200 "World.RobotPlaintiveMotorSm" }
	{ event AE_CL_PLAYSOUND 109 "World.RobotSynth" }
	{ event AE_CL_PLAYSOUND 239 "World.RobotAirRelease" }
	{ event AE_CL_PLAYSOUND 109 "World.RobotMetalPillShort" }
	{ event AE_CL_PLAYSOUND 221 "World.RobotIBeamSlidePitched" }
	{ event AE_CL_PLAYSOUND 250 "World.RobotPlaintiveMotorSm" }
	{ event AE_CL_PLAYSOUND 262 "World.RobotIBeamSlidePitched" }
	{ event AE_CL_PLAYSOUND 280 "World.RobotPlaintiveMotorSm" }
	{ event AE_CL_PLAYSOUND 38 "World.RobotPlaintiveMotorSm" }
	{ event AE_CL_PLAYSOUND 70 "World.RobotIBeamSlidePitched" }
	{ event AE_CL_PLAYSOUND 56 "World.RobotIBeamImpact" }
	{ event AE_CL_PLAYSOUND 65 "World.RobotIBeamImpact" }
	{ event AE_CL_PLAYSOUND 75 "World.RobotIBeamImpact" }
	{ event AE_CL_PLAYSOUND 76 "World.RobotIBeamImpact" }
	{ event AE_CL_PLAYSOUND 219 "World.RobotImpactLgQuiet" }
	{ event AE_CL_PLAYSOUND 230 "World.RobotImpactLgQuiet" }
	{ event AE_CL_PLAYSOUND 270 "World.RobotImpactLgQuiet" }
	{ event AE_CL_PLAYSOUND 278 "World.RobotImpactLgQuiet" }
	{ event AE_CL_PLAYSOUND 279 "World.RobotImpactLgQuiet" }
	{ event AE_CL_PLAYSOUND 290 "World.RobotImpactLgQuiet" }
	{ event AE_CL_PLAYSOUND 273 "World.RobotMetalPillShort" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "assembly_station_door_open" {
	"anim_door_open.smd"
	{ event AE_CL_PLAYSOUND 0 "World.CoopElevatorDoorOpen" }
	fps 50
}

$Sequence "assembly_station_door_close" {
	"anim_door_close.smd"
	{ event AE_CL_PLAYSOUND 0 "World.CoopElevatorDoorClose" }
	fps 50
}

$Sequence "assembly_station_build" {
	"anim_build.smd"
	fps 30
}

$CollisionJoints "assembly_station_physics.smd"
{
	$mass 1386.184
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone "station_phys"
	$concave
}