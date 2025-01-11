$modelname "bee2/player/chell_p1_animations.mdl"

$surfaceprop "default"

$contents "solid"

$cdmaterials "models\player\chell\"

$attachment "eyes" "head" 0 3.42 3.91 rotate -90 -90 0
$attachment "forward" "forward" 0 0 0 rotate 0 0 0
$attachment "righteye" "head" -1.31 3.42 3.91 rotate -90 -90 0
$attachment "lefteye" "head" 1.31 3.42 3.91 rotate -90 -90 0

$definebone "root" "" 0 43.329243 0.634114 0 0 0 0 0 0 0 0 0
$definebone "hips" "root" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "thigh_L" "hips" 4.350457 -2.452274 -0.220442 14.713023 1.870061 171.17245 0 0 0 0 0 0
$definebone "thigh_twist_L" "thigh_L" 0 8.333012 0.000001 0 90.000009 90.000016 0 0 0 0 0 0
$definebone "knee_L" "thigh_twist_L" 8.333015 0 0 0.000001 23.638699 90.000009 0 0 0 0 0 0
$definebone "ankle_L" "knee_L" 18.142759 0 0 -13.442373 91.309418 152.88399 0 0 0 0 0 0
$definebone "toe_L" "ankle_L" 0.003752 6.164958 0.152068 1.41343 0.000001 -77.546566 0 0 0 0 0 0
$definebone "spring_base_L" "knee_L" 4.617707 0.531995 -2.490242 -11.126517 91.012735 179.177596 0 0 0 0 0 0
$definebone "spring_end_L" "spring_base_L" 0 20.883545 0 -1.427757 0.350419 166.208774 0 0 0 0 0 0
$definebone "spring_1_L" "spring_base_L" -0.129009 18.597668 4.167802 -2.588783 0.212534 163.093566 0 0 0 0 0 0
$definebone "thigh_R" "hips" -4.35046 -2.45224 -0.220441 -14.713023 -1.870061 -8.827551 0 0 0 0 0 0
$definebone "thigh_twist_R" "thigh_R" 0.000003 -8.333091 -0.000017 -0.000015 -90.000009 -0.000003 0 0 0 0 0 0
$definebone "knee_R" "thigh_twist_R" 8.332994 0 0 23.638704 0.000008 90.000009 0 0 0 0 0 0
$definebone "ankle_R" "knee_R" 18.142736 0.000001 0 76.495168 -84.538658 158.499649 0 0 0 0 0 0
$definebone "toe_R" "ankle_R" -0.003752 -6.164957 -0.152072 1.413428 0 -77.546566 0 0 0 0 0 0
$definebone "spring_base_R" "knee_R" 4.617711 -2.490237 0.531992 78.828074 -84.864704 -175.588468 0 0 0 0 0 0
$definebone "spring_end_R" "spring_base_R" -0.000005 -20.88352 -0.000004 -1.427759 0.350419 166.208774 0 0 0 0 0 0
$definebone "spring_1_R" "spring_base_R" 0.129005 -18.597641 -4.167804 -2.588785 0.212533 163.093566 0 0 0 0 0 0
$definebone "spine_base" "root" 0 3.918041 0.107099 0 0 3.237073 0 0 0 0 0 0
$definebone "spine_mid" "spine_base" 0 3.79328 0 0 0 -9.888406 0 0 0 0 0 0
$definebone "chest" "spine_mid" 0 4.392048 0 0 0 -4.049068 0 0 0 0 0 0
$definebone "neck" "chest" 0 7.387572 -0.000001 0 0 24.376964 0 0 0 0 0 0
$definebone "head" "neck" 0 3.276221 0 0 0 -13.676565 0 0 0 0 0 0
$definebone "clavicle_L" "chest" 0.89586 3.917912 0.656975 0 0 10.700402 0 0 0 0 0 0
$definebone "bicep_L" "clavicle_L" 4.123603 -0.117653 -2.440016 -1.261874 -43.917648 178.738428 0 0 0 0 0 0
$definebone "bicep_twist_L" "bicep_L" 4.900001 0.000001 0 -1.261569 90.000023 180.000005 0 0 0 0 0 0
$definebone "elbow_L" "bicep_L" 9.799999 0 0 13.104296 0.293722 -88.704698 0 0 0 0 0 0
$definebone "wrist_twist_L" "elbow_L" 4.900002 0 -0.000002 -89.999989 -90.000016 0 0 0 0 0 0 0
$definebone "wrist_L" "elbow_L" 9.8 -0.000001 -0.000003 -89.999989 -90.000016 0 0 0 0 0 0 0
$definebone "thumb_base_L" "wrist_L" -0.187864 1.241705 1.202023 38.992276 59.732777 72.362726 0 0 0 0 0 0
$definebone "thumb_mid_L" "thumb_base_L" 0.000001 1.590449 -0.000001 0.000003 -2.791481 -0.000007 0 0 0 0 0 0
$definebone "thumb_end_L" "thumb_mid_L" 0 1.179849 0.000001 0.000004 13.408064 -0.000006 0 0 0 0 0 0
$definebone "index_base_L" "wrist_L" -0.942188 4.324296 1.306554 -5.626065 1.877454 2.87605 0 0 0 0 0 0
$definebone "index_mid_L" "index_base_L" 0.000001 1.287341 0 -0.000002 -14.714625 -0.000004 0 0 0 0 0 0
$definebone "index_end_L" "index_mid_L" 0 1.044394 0 -0.000001 -4.685691 -0.000006 0 0 0 0 0 0
$definebone "mid_base_L" "wrist_L" -0.6626 4.455425 0.385188 -17.683942 5.892825 -3.351226 0 0 0 0 0 0
$definebone "mid_mid_L" "mid_base_L" -0.000002 1.560847 0 0.000004 -8.809289 0 0 0 0 0 0 0
$definebone "mid_end_L" "mid_mid_L" -0.000002 1.05259 0.000001 0.000003 -1.543041 0 0 0 0 0 0 0
$definebone "ring_base_L" "wrist_L" -0.259947 4.274167 -0.539759 -22.573767 3.079179 -7.509109 0 0 0 0 0 0
$definebone "ring_mid_L" "ring_base_L" 0 1.433729 0 0.000008 -7.020355 0 0 0 0 0 0 0
$definebone "ring_end_L" "ring_mid_L" 0.000003 1.052591 -0.000001 0.000008 -0.000002 0 0 0 0 0 0 0
$definebone "pinky_base_L" "wrist_L" 0.14135 3.871773 -1.363274 -40.093596 0.535897 -21.794157 0 0 0 0 0 0
$definebone "pinky_mid_L" "pinky_base_L" -0.000003 1.065791 0 0.000003 -7.020359 0 0 0 0 0 0 0
$definebone "pinky_end_L" "pinky_mid_L" 0.000001 0.779176 0 0.000003 -0.000004 -0.000001 0 0 0 0 0 0
$definebone "clavicle_R" "chest" -0.89586 3.917945 0.656981 0 0 -169.299598 0 0 0 0 0 0
$definebone "bicep_R" "clavicle_R" -4.1236 0.117698 2.440021 1.261888 136.082394 1.26157 0 0 0 0 0 0
$definebone "bicep_twist_R" "bicep_R" 4.899981 0.000021 -0.000002 1.261569 89.999948 -0.000014 0 0 0 0 0 0
$definebone "elbow_R" "bicep_R" 9.800055 0.000002 0 13.10441 -0.293774 -1.295306 0 0 0 0 0 0
$definebone "wrist_twist_R" "elbow_R" 4.89996 0 0 -0.000001 90.000009 -0.000125 0 0 0 0 0 0
$definebone "wrist_R" "elbow_R" 9.799915 0.000002 0 -0.000001 90.000009 -0.000125 0 0 0 0 0 0
$definebone "thumb_base_R" "wrist_R" 0.187868 -1.241719 -1.20202 38.992276 59.732777 72.362726 0 0 0 0 0 0
$definebone "thumb_mid_R" "thumb_base_R" 0.000037 -1.590426 -0.000016 0.000003 -2.791485 -0.000008 0 0 0 0 0 0
$definebone "thumb_end_R" "thumb_mid_R" -0.00007 -1.179891 0.000028 0.000006 13.408063 -0.000009 0 0 0 0 0 0
$definebone "index_base_R" "wrist_R" 0.942218 -4.324327 -1.30655 -5.626066 1.87745 2.876052 0 0 0 0 0 0
$definebone "index_mid_R" "index_base_R" -0.000016 -1.287268 -0.000011 -0.000002 -14.71463 -0.000001 0 0 0 0 0 0
$definebone "index_end_R" "index_mid_R" 0.000041 -1.044481 0.00003 -0.000001 -4.685692 0 0 0 0 0 0 0
$definebone "mid_base_R" "wrist_R" 0.662647 -4.455462 -0.385182 -17.683942 5.892821 -3.351225 0 0 0 0 0 0
$definebone "mid_mid_R" "mid_base_R" -0.000047 -1.560865 0.000031 0.000003 -8.809291 0.000002 0 0 0 0 0 0
$definebone "mid_end_R" "mid_mid_R" -0.000002 -1.052544 -0.000011 0.000004 -1.543037 0.000002 0 0 0 0 0 0
$definebone "ring_base_R" "wrist_R" 0.259921 -4.274165 0.53976 -22.573767 3.079176 -7.509108 0 0 0 0 0 0
$definebone "ring_mid_R" "ring_base_R" 0.000076 -1.433766 -0.000023 0.000007 -7.020357 0.000002 0 0 0 0 0 0
$definebone "ring_end_R" "ring_mid_R" -0.000042 -1.052585 0.000007 0.000007 -0.000002 0.000002 0 0 0 0 0 0
$definebone "pinky_base_R" "wrist_R" -0.141325 -3.871754 1.36327 -40.0936 0.535895 -21.794157 0 0 0 0 0 0
$definebone "pinky_mid_R" "pinky_base_R" -0.00001 -1.065874 0.000004 0 -7.020361 0.000004 0 0 0 0 0 0
$definebone "pinky_end_R" "pinky_mid_R" 0.000023 -0.779119 -0.000022 0.000001 -0.000007 0.000004 0 0 0 0 0 0
$definebone "weapon_bone" "wrist_R" 0.325557 0.019277 0.438602 -78.99999 180.000005 90.000016 0 0 0 0 0 0
$definebone "forward" "head" 0 2.500004 0 -90.000003 -90.000003 0 0 0 0 0 0 0

$sectionframes 30 160

$poseparameter "body_pitch" -45 45 loop 360
$poseparameter "body_yaw" -45 45 loop 360
$poseparameter "head_yaw" -29.28032 29.24085 loop 0
$poseparameter "head_pitch" -20.75119 21.41426 loop 0
$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0

$ikchain "rhand" "wrist_R" knee 0 0 0
$ikchain "lhand" "wrist_L" knee 0 0 0
$ikchain "rfoot" "ankle_R" knee 0.273 0.008 0.962
$ikchain "lfoot" "ankle_L" knee 0.195 -0.953 0.233

$weightlist "weights_head_rot_z" {
	 "root" 0
	 "hips" 0
	 "thigh_L" 0
	 "thigh_twist_L" 0
	 "knee_L" 0
	 "ankle_L" 0
	 "toe_L" 0
	 "spring_base_L" 0
	 "spring_end_L" 0
	 "spring_1_L" 0
	 "thigh_R" 0
	 "thigh_twist_R" 0
	 "knee_R" 0
	 "ankle_R" 0
	 "toe_R" 0
	 "spring_base_R" 0
	 "spring_end_R" 0
	 "spring_1_R" 0
	 "spine_base" 0
	 "spine_mid" 1
	 "chest" 1
	 "neck" 1
	 "head" 1
	 "clavicle_L" 0
	 "bicep_L" 0
	 "bicep_twist_L" 0
	 "elbow_L" 0
	 "wrist_twist_L" 0
	 "wrist_L" 0
	 "thumb_base_L" 0
	 "thumb_mid_L" 0
	 "thumb_end_L" 0
	 "index_base_L" 0
	 "index_mid_L" 0
	 "index_end_L" 0
	 "mid_base_L" 0
	 "mid_mid_L" 0
	 "mid_end_L" 0
	 "ring_base_L" 0
	 "ring_mid_L" 0
	 "ring_end_L" 0
	 "pinky_base_L" 0
	 "pinky_mid_L" 0
	 "pinky_end_L" 0
	 "clavicle_R" 0
	 "bicep_R" 0
	 "bicep_twist_R" 0
	 "elbow_R" 0
	 "wrist_twist_R" 0
	 "wrist_R" 0
	 "thumb_base_R" 0
	 "thumb_mid_R" 0
	 "thumb_end_R" 0
	 "index_base_R" 0
	 "index_mid_R" 0
	 "index_end_R" 0
	 "mid_base_R" 0
	 "mid_mid_R" 0
	 "mid_end_R" 0
	 "ring_base_R" 0
	 "ring_mid_R" 0
	 "ring_end_R" 0
	 "pinky_base_R" 0
	 "pinky_mid_R" 0
	 "pinky_end_R" 0
	 "weapon_bone" 0
	 "forward" 1
}

$weightlist "weights_portal_aimmatrix" {
	 "root" 0
	 "hips" 0
	 "thigh_L" 0
	 "thigh_twist_L" 0
	 "knee_L" 0
	 "ankle_L" 0
	 "toe_L" 0
	 "spring_base_L" 0
	 "spring_end_L" 0
	 "spring_1_L" 0
	 "thigh_R" 0
	 "thigh_twist_R" 0
	 "knee_R" 0
	 "ankle_R" 0
	 "toe_R" 0
	 "spring_base_R" 0
	 "spring_end_R" 0
	 "spring_1_R" 0
	 "spine_base" 1
	 "spine_mid" 1
	 "chest" 1
	 "neck" 1
	 "head" 1
	 "clavicle_L" 1
	 "bicep_L" 1
	 "bicep_twist_L" 1
	 "elbow_L" 1
	 "wrist_twist_L" 1
	 "wrist_L" 1
	 "thumb_base_L" 1
	 "thumb_mid_L" 1
	 "thumb_end_L" 1
	 "index_base_L" 1
	 "index_mid_L" 1
	 "index_end_L" 1
	 "mid_base_L" 1
	 "mid_mid_L" 1
	 "mid_end_L" 1
	 "ring_base_L" 1
	 "ring_mid_L" 1
	 "ring_end_L" 1
	 "pinky_base_L" 1
	 "pinky_mid_L" 1
	 "pinky_end_L" 1
	 "clavicle_R" 1
	 "bicep_R" 1
	 "bicep_twist_R" 1
	 "elbow_R" 1
	 "wrist_twist_R" 1
	 "wrist_R" 1
	 "thumb_base_R" 1
	 "thumb_mid_R" 1
	 "thumb_end_R" 1
	 "index_base_R" 1
	 "index_mid_R" 1
	 "index_end_R" 1
	 "mid_base_R" 1
	 "mid_mid_R" 1
	 "mid_end_R" 1
	 "ring_base_R" 1
	 "ring_mid_R" 1
	 "ring_end_R" 1
	 "pinky_base_R" 1
	 "pinky_mid_R" 1
	 "pinky_end_R" 1
	 "weapon_bone" 1
	 "forward" 1
}

// --------------------------------------------------------------------------------------------------------------------------------------------------------------
// --------------------------------------------------------------------------------------------------------------------------------------------------------------
// --------------------------------------------------------------------------------------------------------------------------------------------------------------

$animation "head_aimmatrix_aimMat_up_left_corrective_animation" "chell_animations_anims\head_aimmatrix_aimMat_up_left_corrective_animation.smd" { }
$animation "head_aimmatrix_aimMat_mid_center_corrective_animation" "chell_animations_anims\head_aimmatrix_aimMat_mid_center_corrective_animation.smd" { }
$animation "head_aimmatrix_aimMat_up_right_corrective_animation" "chell_animations_anims\head_aimmatrix_aimMat_up_right_corrective_animation.smd" { }
$animation "head_aimmatrix_aimMat_down_center_corrective_animation" "chell_animations_anims\head_aimmatrix_aimMat_down_center_corrective_animation.smd" { }
$animation "head_aimmatrix_aimMat_up_center_corrective_animation" "chell_animations_anims\head_aimmatrix_aimMat_up_center_corrective_animation.smd" { }

$animation "head_aimmatrix_aimMat_mid_center" "chell_animations_anims\head_aimmatrix_aimMat_mid_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "head_aimmatrix_aimMat_mid_center_corrective_animation" 0
	weightlist "weights_head_rot_z"
}

$animation "head_aimmatrix_aimMat_mid_left" "chell_animations_anims\head_aimmatrix_aimMat_mid_left.smd" {
	fps 30
}

$animation "head_aimmatrix_aimMat_mid_right" "chell_animations_anims\head_aimmatrix_aimMat_mid_right.smd" {
	fps 30
}

$animation "head_aimmatrix_aimMat_down_center" "chell_animations_anims\head_aimmatrix_aimMat_down_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "head_aimmatrix_aimMat_down_center_corrective_animation" 0
	weightlist "weights_head_rot_z"
}

$animation "head_aimmatrix_aimMat_up_center" "chell_animations_anims\head_aimmatrix_aimMat_up_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "head_aimmatrix_aimMat_up_center_corrective_animation" 0
	weightlist "weights_head_rot_z"
}

$animation "head_aimmatrix_aimMat_up_right" "chell_animations_anims\head_aimmatrix_aimMat_up_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "head_aimmatrix_aimMat_up_right_corrective_animation" 0
	weightlist "weights_head_rot_z"
}

$animation "head_aimmatrix_aimMat_up_left" "chell_animations_anims\head_aimmatrix_aimMat_up_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "head_aimmatrix_aimMat_up_left_corrective_animation" 0
	weightlist "weights_head_rot_z"
}

// --------------------------------------------------------------------------------------------------------------------------------------------------------------
// --------------------------------------------------------------------------------------------------------------------------------------------------------------
// --------------------------------------------------------------------------------------------------------------------------------------------------------------

$animation "reference" "chell_animations_anims\reference.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 160 160 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 160 160 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 160 160 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 160 160 target 3
	walkframe 151 LX LY
}

$animation "pose_neutral" "chell_animations_anims\pose_neutral.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

// --------------------------------------------------------------------------------------------------------------------------------------------------------------
// --------------------------------------------------------------------------------------------------------------------------------------------------------------
// --------------------------------------------------------------------------------------------------------------------------------------------------------------

$sequence "head_aimmatrix_aimMat_mid_center_z" {
	"head_aimmatrix_aimMat_up_left"
	"head_aimmatrix_aimMat_mid_center"
	"head_aimmatrix_aimMat_up_right"
	autoplay
	blend "head_yaw" -29.28032 29.24085
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "head_aimmatrix_aimMat_mid_center_y" {
	"head_aimmatrix_aimMat_down_center"
	"head_aimmatrix_aimMat_mid_center"
	"head_aimmatrix_aimMat_up_center"
	autoplay
	blend "head_pitch" 21.41426 -20.75119
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$include player_animations_nogun.qci
$include player_animations_portalgun.qci

