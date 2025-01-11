$modelname "bee2\player\chell_p1.mdl"

$upaxis Y

$model "Chell" "chell_p1_reference.smd" {

	eyeball "eye_0" "head" -1.307000 69.259998 3.754999 "eyeball_r" 1.80356 0 "iris_unused" 0.7
	eyeball "eye_1" "head" 1.307000 69.259998 3.754999 "eyeball_l" 1.80356 0 "iris_unused" 0.7

	flexcontroller eyes range -45 45 "eyes_updown"
	flexcontroller eyes range -65 65 "eyes_rightleft"
	flexcontroller head range -30 30 "head_rightleft"
	flexcontroller head range -15 15 "head_updown"
	flexcontroller head range -15 15 "head_tilt"

}

$surfaceprop "flesh"

$contents "solid"

$illumposition 0 0.755 36.917

$eyeposition 0 69.26 3.755

$ambientboost

$mostlyopaque

$cdmaterials "bee2\models\player\chell_p1\"

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "eyes" "head" 0 3.42 3.91 rotate -90 -90 0
$attachment "forward" "forward" 0 0 0 rotate 0 0 0
$attachment "righteye" "head" -1.31 3.42 3.91 rotate -90 -90 0
$attachment "lefteye" "head" 1.31 3.42 3.91 rotate -90 -90 0

$definebone "root" "" 0 43.329243 0.634114 0 0 0 0 0 0 0 0 0
$definebone "hips" "root" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "thigh_L" "hips" 4.350457 -2.452271 -0.220442 14.713021 1.870061 171.17245 0 0 0 0 0 0
$definebone "thigh_twist_L" "thigh_L" -0.000001 8.333015 0.000001 0 90.000003 90.000009 0 0 0 0 0 0
$definebone "knee_L" "thigh_twist_L" 8.333015 0 0 0.000002 23.638694 89.999982 0 0 0 0 0 0
$definebone "ankle_L" "knee_L" 18.142761 0.000001 0.000002 -13.442383 91.309418 152.883976 0 0 0 0 0 0
$definebone "toe_L" "ankle_L" 0.003753 6.164959 0.152068 1.413433 0.000004 -77.54656 0 0 0 0 0 0
$definebone "spring_base_L" "knee_L" 4.61771 0.531996 -2.490241 -11.126526 91.012735 179.177582 0 0 0 0 0 0
$definebone "spring_end_L" "spring_base_L" 0 20.883545 -0.000003 -1.427751 0.350419 166.208774 0 0 0 0 0 0
$definebone "spring_1_L" "spring_base_L" -0.12901 18.597668 4.167799 -2.588776 0.212533 163.093552 0 0 0 0 0 0
$definebone "thigh_R" "hips" -4.35046 -2.45224 -0.220441 -14.713021 -1.870061 -8.82755 0 0 0 0 0 0
$definebone "thigh_twist_R" "thigh_R" 0.000003 -8.333091 -0.000018 -0.000015 -90.000003 -0.000004 0 0 0 0 0 0
$definebone "knee_R" "thigh_twist_R" 8.332994 0.000001 -0.000001 23.638704 0.000018 90.000003 0 0 0 0 0 0
$definebone "ankle_R" "knee_R" 18.14274 0.000003 -0.000001 76.495168 -84.538658 158.499635 0 0 0 0 0 0
$definebone "toe_R" "ankle_R" -0.003752 -6.164958 -0.152072 1.413427 -0.000002 -77.54656 0 0 0 0 0 0
$definebone "spring_base_R" "knee_R" 4.61771 -2.490236 0.531991 78.82806 -84.864697 -175.588481 0 0 0 0 0 0
$definebone "spring_end_R" "spring_base_R" -0.000004 -20.883526 -0.000002 -1.427757 0.350417 166.208774 0 0 0 0 0 0
$definebone "spring_1_R" "spring_base_R" 0.129006 -18.597643 -4.167799 -2.588781 0.212531 163.093552 0 0 0 0 0 0
$definebone "spine_base" "root" 0 3.918041 0.107099 0 0 3.237072 0 0 0 0 0 0
$definebone "spine_mid" "spine_base" 0 3.79328 0 0 0 -9.888406 0 0 0 0 0 0
$definebone "chest" "spine_mid" 0 4.392048 0 0 0 -4.049068 0 0 0 0 0 0
$definebone "neck" "chest" 0 7.387572 -0.000001 0 0 24.376964 0 0 0 0 0 0
$definebone "head" "neck" 0 3.276228 -0.000002 0 0 -13.676564 0 0 0 0 0 0
$definebone "clavicle_L" "chest" 0.89586 3.917912 0.656974 0 0 10.700401 0 0 0 0 0 0
$definebone "bicep_L" "clavicle_L" 4.123604 -0.117656 -2.440016 -1.261874 -43.917642 178.738428 0 0 0 0 0 0
$definebone "bicep_twist_L" "bicep_L" 4.899993 -0.000002 0 -1.26157 90.000037 -180.000005 0 0 0 0 0 0
$definebone "elbow_L" "bicep_L" 9.79999 -0.000004 0 13.104298 0.293702 -88.704698 0 0 0 0 0 0
$definebone "wrist_twist_L" "elbow_L" 4.899995 0 -0.000001 -89.999955 -90.000009 0 0 0 0 0 0 0
$definebone "wrist_L" "elbow_L" 9.799992 -0.000001 -0.000004 -89.999955 -90.000009 0 0 0 0 0 0 0
$definebone "thumb_base_L" "wrist_L" -0.187865 1.241702 1.20202 38.992273 59.732805 72.362706 0 0 0 0 0 0
$definebone "thumb_mid_L" "thumb_base_L" 0.000001 1.590447 0.000003 0.000009 -2.791479 -0.000036 0 0 0 0 0 0
$definebone "thumb_end_L" "thumb_mid_L" 0 1.179847 -0.000001 0.000023 13.408075 -0.000042 0 0 0 0 0 0
$definebone "index_base_L" "wrist_L" -0.942187 4.324289 1.306552 -5.626066 1.877415 2.876044 0 0 0 0 0 0
$definebone "index_mid_L" "index_base_L" 0 1.287339 -0.000001 -0.000006 -14.714666 -0.000009 0 0 0 0 0 0
$definebone "index_end_L" "index_mid_L" 0.000001 1.04439 0 -0.000008 -4.685731 -0.000014 0 0 0 0 0 0
$definebone "mid_base_L" "wrist_L" -0.662603 4.455416 0.385188 -17.683927 5.892786 -3.351228 0 0 0 0 0 0
$definebone "mid_mid_L" "mid_base_L" 0 1.560842 -0.000001 0.000025 -8.809323 0.000004 0 0 0 0 0 0
$definebone "mid_end_L" "mid_mid_L" -0.000003 1.052589 0 0.000034 -1.543076 0.000003 0 0 0 0 0 0
$definebone "ring_base_L" "wrist_L" -0.25995 4.274158 -0.539757 -22.573744 3.079137 -7.509109 0 0 0 0 0 0
$definebone "ring_mid_L" "ring_base_L" -0.000003 1.433725 0 0.000039 -7.020394 0.000015 0 0 0 0 0 0
$definebone "ring_end_L" "ring_mid_L" 0 1.052586 0.000002 0.000049 -0.000048 0.000018 0 0 0 0 0 0
$definebone "pinky_base_L" "wrist_L" 0.141347 3.871769 -1.363274 -40.093562 0.535854 -21.794157 0 0 0 0 0 0
$definebone "pinky_mid_L" "pinky_base_L" 0.000004 1.065787 0.000002 0.000056 -7.02037 0.000013 0 0 0 0 0 0
$definebone "pinky_end_L" "pinky_mid_L" 0 0.779175 0.000001 0.000063 -0.000021 0.000012 0 0 0 0 0 0
$definebone "clavicle_R" "chest" -0.89586 3.917945 0.656981 0 0 -169.299598 0 0 0 0 0 0
$definebone "bicep_R" "clavicle_R" -4.1236 0.117698 2.44002 1.261888 136.082394 1.26157 0 0 0 0 0 0
$definebone "bicep_twist_R" "bicep_R" 4.899975 0.000024 -0.000002 1.261568 89.999914 -0.000015 0 0 0 0 0 0
$definebone "elbow_R" "bicep_R" 9.800053 0.000004 0 13.104408 -0.293759 -1.295305 0 0 0 0 0 0
$definebone "wrist_twist_R" "elbow_R" 4.899956 0.000001 0.000001 -0.000009 89.999962 -0.00013 0 0 0 0 0 0
$definebone "wrist_R" "elbow_R" 9.799909 0.000004 0.000001 -0.000009 89.999962 -0.00013 0 0 0 0 0 0
$definebone "thumb_base_R" "wrist_R" 0.187866 -1.241716 -1.202018 38.992273 59.732805 72.362706 0 0 0 0 0 0
$definebone "thumb_mid_R" "thumb_base_R" 0.000035 -1.590422 -0.000014 0.000013 -2.791475 -0.000034 0 0 0 0 0 0
$definebone "thumb_end_R" "thumb_mid_R" -0.000073 -1.179889 0.000028 0.000025 13.408084 -0.000039 0 0 0 0 0 0
$definebone "index_base_R" "wrist_R" 0.942218 -4.324323 -1.306548 -5.626068 1.87741 2.876045 0 0 0 0 0 0
$definebone "index_mid_R" "index_base_R" -0.000017 -1.287266 -0.000012 -0.000009 -14.714671 -0.000007 0 0 0 0 0 0
$definebone "index_end_R" "index_mid_R" 0.00004 -1.044481 0.000029 -0.000011 -4.685736 -0.000011 0 0 0 0 0 0
$definebone "mid_base_R" "wrist_R" 0.662648 -4.455458 -0.38518 -17.683932 5.892782 -3.351228 0 0 0 0 0 0
$definebone "mid_mid_R" "mid_base_R" -0.000045 -1.560861 0.000027 0.000024 -8.80933 0.000006 0 0 0 0 0 0
$definebone "mid_end_R" "mid_mid_R" -0.000003 -1.052542 -0.000011 0.000033 -1.543079 0.000006 0 0 0 0 0 0
$definebone "ring_base_R" "wrist_R" 0.259922 -4.274157 0.539758 -22.573748 3.079133 -7.509108 0 0 0 0 0 0
$definebone "ring_mid_R" "ring_base_R" 0.000077 -1.433767 -0.000024 0.000037 -7.020398 0.000017 0 0 0 0 0 0
$definebone "ring_end_R" "ring_mid_R" -0.000042 -1.052583 0.000008 0.000047 -0.000053 0.000017 0 0 0 0 0 0
$definebone "pinky_base_R" "wrist_R" -0.141323 -3.871747 1.363268 -40.093566 0.535849 -21.794154 0 0 0 0 0 0
$definebone "pinky_mid_R" "pinky_base_R" -0.000007 -1.06587 0.000001 0.000054 -7.020375 0.00002 0 0 0 0 0 0
$definebone "pinky_end_R" "pinky_mid_R" 0.000024 -0.779118 -0.00002 0.00006 -0.000029 0.000022 0 0 0 0 0 0
$definebone "weapon_bone" "wrist_R" 0.325554 0.019279 0.438601 -78.99999 -180.000005 90.00003 0 0 0 0 0 0
$definebone "forward" "head" 0 2.500003 0 -90.000003 -90.000003 0 0 0 0 0 0 0
$definebone "ponytail" "head" 0 2.017658 -3.069155 0 0 -38.917161 0 0 0 0 0 0

$bonemerge "root"
$bonemerge "spine_base"
$bonemerge "spine_mid"
$bonemerge "chest"
$bonemerge "clavicle_R"
$bonemerge "bicep_R"
$bonemerge "elbow_R"
$bonemerge "wrist_R"
$bonemerge "weapon_bone"

$jigglebone "ponytail"
{
	is_rigid
	{
		length 20
		tip_mass -100
		angle_constraint 25
	}
}

$poseparameter "body_pitch" -45 45 loop 360
$poseparameter "body_yaw" -45 45 loop 360

$ikchain "rhand" "wrist_R" knee 0 0 0
$ikchain "lhand" "wrist_L" knee 0 0 0
$ikchain "rfoot" "ankle_R" knee 0 0 0
$ikchain "lfoot" "ankle_L" knee 0 0 0

$sequence "ref" {
	"chell_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$includemodel "bee2/player/chell_p1_animations.mdl"