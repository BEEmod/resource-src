// A version of telescope_arm_128, setup to do catapults.

$modelname "BEE2/panels/panel_faith_large.mdl"

// Shrink ever so slightly to not z-fight with neighbouring blocks..
$scale 0.999
$bodygroup "default"
{
	studio "telescope_arm_128_glass_reference.smd"
}
// Don't rescale animations..
$scale 1

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

// Model uses material "models\anim_wp\circle_shield\circle_shield_main.vmt"
// Model uses material "models\anim_wp\circle_shield\circle_shield_glass.vmt"

$attachment "panel_top" "panel_top" 0 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 56.416 -0.727

// $bbox -128 -64 -66.65 15.168 64 65.195

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "telescope_arm_00" -19.000643 -17.497288 -29.443237 19.000647 24.049377 15.010468
// $hbox 0 "telescope_arm_00y" -12.841201 -14.933298 -14.856049 12.841204 24.018587 15.010468
// $hbox 0 "telescope_arm_00x" -13.327054 -14.8216 -15.484242 50.185104 14.243906 15.484242
// $hbox 0 "telescope_arm_00z" 0 -14.933297 -14.856049 12.841204 14.933224 15.010468
// $hbox 0 "telescope_arm_01" -49.243973 -8.035641 -11.013407 17.624294 29.055126 11.013411
// $hbox 0 "telescope_arm_02" -3.539311 -10.950659 -12.09699 32.492947 4.809324 12.096976
// $hbox 0 "telescope_arm_03" -7.170071 -7.207558 -9.485153 83.105171 4.632654 8.672971
// $hbox 0 "telescope_arm_04" -87.003975 -4.100977 -9.276304 9.391047 4.116385 6.566133
// $hbox 0 "telescope_arm_05" -94.743073 -2.921906 -8.863931 12.201227 2.938993 5.033361
// $hbox 0 "telescope_arm_06" -7.119144 -4.973604 -4.973543 7.662132 4.973554 10.394086
// $hbox 0 "telescope_arm_07" -5.154451 -5.561475 -5.154409 10.100893 12.88158 5.154411
// $hbox 0 "panel_top" -61.968006 -62.000298 -33.494854 66.032036 66.287956 3.981795


$sequence "BindPose" "telescope_arm_128_glass_anims\BindPose.smd" {
	fps 30
}

$sequence "catapult" "catapult.smd" {
	fps 24
	{
		event AE_CL_PLAYSOUND 0 "World.CatapultLaunch"
		event AE_CL_PLAYSOUND 11 "World.RobotPlaintiveMotorSm"
	}
}

// Included for completeness..
$sequence "up01" "telescope_arm_128_glass_anims\up01.smd" {
	fps 24
}

$sequence "down01" "telescope_arm_128_glass_anims\down01.smd" {
	fps 24
}

$sequence "90down" "telescope_arm_128_glass_anims\90down.smd" {
	fps 24
}

$sequence "90idle" "telescope_arm_128_glass_anims\90idle.smd" {
	fps 24
}

$sequence "90up" "telescope_arm_128_glass_anims\90up.smd" {
	fps 24
}

$sequence "upidle" "telescope_arm_128_glass_anims\upidle.smd" {
	fps 24
}

$sequence "idle" "telescope_arm_128_glass_anims\idle.smd" {
	fps 24
}

$collisionjoints "telescope_arm_128_glass_physics.smd"
{
	$mass 7078.611
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone "telescope_arm_00"


	$jointconstrain "telescope_arm_07" x limit 0 0 0
	$jointconstrain "telescope_arm_07" y limit 0 0 0
	$jointconstrain "telescope_arm_07" z limit 0 0 0
}
