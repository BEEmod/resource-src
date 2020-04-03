// A version of telescope_arm_128x256, rescaled to not z-fight when on an edge

$modelname "BEE2/panels/panel_glass_double.mdl"

// Shrink ever so slightly to not z-fight with neighbouring blocks..
$scale 0.999
$bodygroup "default"
{
	studio "telescope_arm_128x256_model.smd"
}
// Don't rescale animations..
$scale 1

$surfaceprop "default"

$contents "solid"

$illumposition 0 64 64

$mostlyopaque

$cdmaterials "models\anim_wp\circle_shield"
$cdmaterials ""

$attachment "panel_top" "panel_top" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -128 -64 -64 0 64 192

// $definebone "telescope_arm_00" "" 0 0 -98.556778 0 0 0 0 0 0 0 0 0
// $definebone "telescope_arm_00y" "telescope_arm_00" 0 0 0 0 0 0 0 0 0 0 0 0
// $definebone "telescope_arm_00x" "telescope_arm_00" 0 0 0 -18.389757 -90.000003 90.000003 0 0 0 0 0 0
// $definebone "telescope_arm_00z" "telescope_arm_00" 0 0 0 0 0 0 0 0 0 0 0 0
// $definebone "telescope_arm_01" "telescope_arm_00x" 45.141075 0 -0.000002 0.000001 0 -0.000001 0 0 0 0 0 0
// $definebone "telescope_arm_02" "telescope_arm_01" 0 0 0.000001 0.000001 62.050158 -0.000006 0 0 0 0 0 0
// $definebone "telescope_arm_03" "telescope_arm_02" 27.466564 0 -0.000001 -0.000009 81.014322 0.000001 0 0 0 0 0 0
// $definebone "telescope_arm_04" "telescope_arm_03" 81.448158 -2.041801 -0.000004 0 0.106421 0.000001 0 0 0 0 0 0
// $definebone "telescope_arm_07" "telescope_arm_04" -0.000002 -0.187599 10.39409 88.966048 90.000351 90.000378 0 0 0 0 0 0
// $definebone "telescope_arm_08" "telescope_arm_07" 0 -47.502449 0 0.000003 90.000009 0.000003 0 0 0 0 0 0
// $definebone "panel_top" "telescope_arm_08" -0.000008 12.881577 0.000002 0.000002 -90.000003 0.000005 0 0 0 0 0 0


$sequence "BindPose" {
	"telescope_arm_128x256_anims\BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "90idle" {
	"telescope_arm_128x256_anims\90idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "90up" {
	"telescope_arm_128x256_anims\90up.smd"
	{ event AE_CL_PLAYSOUND 1 "World.RobotPlaintiveMotorLg" }
	{ event AE_CL_PLAYSOUND 10 "World.RobotRatchetMd" }
	{ event AE_CL_PLAYSOUND 5 "World.RobotMetalTweakShort" }
	{ event AE_CL_PLAYSOUND 8 "World.RobotIBeamSlide" }
	{ event AE_CL_PLAYSOUND 19 "World.RobotPanelImpact" }
	{ event AE_CL_PLAYSOUND 16 "World.RobotIBeamImpact" }
	{ event AE_CL_PLAYSOUND 18 "World.RobotAirRelease" }
	{ event AE_CL_PLAYSOUND 14 "World.RobotMetalTweakShort" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "down01" {
	"telescope_arm_128x256_anims\down01.smd"
	{ event AE_CL_PLAYSOUND 1 "World.RobotPlaintiveMotorMd" }
	{ event AE_CL_PLAYSOUND 19 "World.RobotPanelImpact" }
	{ event AE_CL_PLAYSOUND 16 "World.RobotIBeamImpact" }
	{ event AE_CL_PLAYSOUND 15 "World.RobotAirRelease" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "up01" {
	"telescope_arm_128x256_anims\up01.smd"
	{ event AE_CL_PLAYSOUND 1 "World.RobotPlaintiveMotorMd" }
	{ event AE_CL_PLAYSOUND 19 "World.RobotPanelImpactPitched" }
	{ event AE_CL_PLAYSOUND 16 "World.RobotIBeamImpact" }
	{ event AE_CL_PLAYSOUND 13 "World.RobotAirRelease" }
	{ event AE_CL_PLAYSOUND 5 "World.RobotMetalTweakShort" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "idle" {
	"telescope_arm_128x256_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "90down" {
	"telescope_arm_128x256_anims\90down.smd"
	{ event AE_CL_PLAYSOUND 1 "World.RobotPlaintiveMotorMd" }
	{ event AE_CL_PLAYSOUND 4 "World.RobotIBeamSlide" }
	{ event AE_CL_PLAYSOUND 17 "World.RobotPanelImpact" }
	{ event AE_CL_PLAYSOUND 1 "World.RobotHydraulicsClose20f" }
	{ event AE_CL_PLAYSOUND 13 "World.RobotAirRelease" }
	{ event AE_CL_PLAYSOUND 11 "World.RobotMetalPillShort" }
	{ event AE_CL_PLAYSOUND 6 "World.RobotMetalTweakShort" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$collisionjoints "telescope_arm_128x256_physics.smd"
{
	$mass 12453.3
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone "telescope_arm_00"


	$jointconstrain "telescope_arm_08" x limit 0 0 0
	$jointconstrain "telescope_arm_08" y limit 0 0 0
	$jointconstrain "telescope_arm_08" z limit 0 0 0
}

$collisiontext
{
	collisionText 
	{
	}
}

$keyvalues
{
}
