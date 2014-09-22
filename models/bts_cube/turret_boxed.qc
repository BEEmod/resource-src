// Created by Crowbar 0.19.0.0

$modelname "props_ingame/bts_box.mdl"

$bodygroup "body"
{
	studio "turret_boxed_reference.smd"
}


//$poseparameter "aim_yaw" -60 60 0
//$poseparameter "aim_pitch" -15 15 0

$cdmaterials "models/props_ingame/bts_box"

$texturegroup "skinfamilies"
{
	{ "turret_box.vmt" }
	{ "turret_box.vmt" }
	{ "turret_box.vmt" }
	{ "turret_box.vmt" }
	{ "turret_box.vmt" }
	{ "turret_box.vmt" }

	{ "bounce.vmt" }
	{ "speed.vmt" }
	{ "bounce.vmt" }
	{ "speed.vmt" }
	{ "bounce.vmt" }
	{ "speed.vmt" }
}

$origin 0 0 36

// Model uses material "models\props_factory\turret_box.vmt"
// Model uses material "turret_casing.vmt"
// Model uses material "turret_frame01.vmt"
// Model uses material "turret_frame02.vmt"
// Model uses material "turret_broken.vmt"

// $attachment "Left_eject" "Left_eject" 0 0 0 rotate 0 0 0
// $attachment "Right_eject" "Right_eject" 0 0 0 rotate 0 0 0
// $attachment "eyes" "Aim_UD" 0 -0.1 13 rotate -90 -90 0
// $attachment "light" "Base" 0 18 13 rotate -90 -90 0
// $attachment "LFT_Gun1_Muzzle" "LFT_Gun1" 0 0 1 rotate -90 -90 0
// $attachment "LFT_Gun2_Muzzle" "LFT_Gun2" 0 0 3 rotate -90 -90 0
// $attachment "RT_Gun1_Muzzle" "RT_Gun1" 0 0 1 rotate -90 -90 0
// $attachment "RT_Gun2_Muzzle" "RT_Gun2" 0 0 3 rotate -90 -90 0
// $attachment "Wire1_start" "Base" -2.5 14 4 rotate -90 -90 0
// $attachment "Wire2_start" "Base" -2.5 22 2 rotate -90 -90 0
// $attachment "Wire3_start" "Base" 2.5 22 2 rotate -90 -90 0
// $attachment "Wire4_start" "Base" 2.5 14 4 rotate -90 -90 0
// $attachment "Wire1_end" "LFT_Wing" 7 -2 3 rotate -90 -90 0
// $attachment "Wire2_end" "LFT_Wing" 7 2 -3 rotate -90 -90 0
// $attachment "Wire3_end" "RT_Wing" -7 2 -3 rotate -90 -90 0
// $attachment "Wire4_end" "RT_Wing" -7 -2 3 rotate -90 -90 0
// $attachment "L_eject" "LFT_Wing" 1 0 0 rotate 10 -180 180
// $attachment "R_eject" "RT_Wing" -1 0 0 rotate 10 0 0
// $attachment "burstCenter" "Base" 0 17 5.5 rotate -90 -90 0

$surfaceprop "solidmetal"

$contents "solid"

$eyeposition 0 0 64

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 -1.425 34.126

// $bbox -16 -16 0 16 16 64

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

$hboxset "default"
$hbox 1 "Base" -15.5 -18.940001 -22.709999 15.5 4.45 25.559999
$hbox 2 "Aim_LR" -16 -13.62 -25.379999 16 -6.95 9.49
$hbox 3 "Aim_UD" -16 -7.27 -24.120001 16 31.73 10.28
$skipboneinbbox


$sectionframes 30 2500

// $animation "aim_neutral" "turret_boxed_anims\aim_neutral.smd" {
	// fps 30
// }
// $animation "aim_up" "turret_boxed_anims\aim_up.smd" {
	// fps 30
	// // subtract "aim_neutral" 0
// }
// $animation "aim_down" "turret_boxed_anims\aim_down.smd" {
	// fps 30
	// // subtract "aim_neutral" 0
// }
// $animation "aim_right" "turret_boxed_anims\aim_right.smd" {
	// fps 30
	// // subtract "aim_neutral" 0
// }
// $animation "aim_left" "turret_boxed_anims\aim_left.smd" {
	// fps 30
	// // subtract "aim_neutral" 0
// }


$sequence "idle" "turret_boxed_anims\idle.smd" {
	 fps 30
	 "ACT_IDLE" 1
	 loop
 }
 $sequence "deploy" "turret_boxed_anims\deploy.smd" {
	fps 30
	"ACT_FLOOR_TURRET_OPEN" 1
 }
 $sequence "idlealert" "turret_boxed_anims\idlealert.smd" {
	fps 10
	"ACT_FLOOR_TURRET_OPEN_IDLE" 1
	loop
 }
$sequence "retract" "turret_boxed_anims\retract.smd" {
	fps 30
	"ACT_FLOOR_TURRET_CLOSE" 1
 }



// $sequence "fire" "turret_boxed_anims\fire.smd" {
	// fps 30
	// "ACT_FLOOR_TURRET_FIRE" 1
	// { event AE_NPC_MUZZLEFLASH 0 "COMBINE LFT_Gun1_muzzle" }
	// { event AE_NPC_MUZZLEFLASH 0 "COMBINE RT_Gun1_muzzle" }
// }

// $sequence "fire2" "turret_boxed_anims\fire2.smd" {
	// fps 30
	// "ACT_FLOOR_TURRET_FIRE2" 1
	// { event AE_NPC_MUZZLEFLASH 0 "COMBINE LFT_Gun2_muzzle" }
	// { event AE_NPC_MUZZLEFLASH 0 "COMBINE RT_Gun2_muzzle" }
// }

// $sequence "eye_off" "turret_boxed_anims\eye_off.smd" {
	// fps 30
	// "ACT_FLOOR_TURRET_DIE" 1
// }

// $sequence "idle_eye_off" "turret_boxed_anims\idle_eye_off.smd" {
	// fps 30
	// "ACT_FLOOR_TURRET_DIE_IDLE" 1
// }

// $sequence "aim_updown" "turret_boxed_anims\aim_updown.smd" {
	// fps 30
// }

// $sequence "aim_leftright" "turret_boxed_anims\aim_leftright.smd" {
	// fps 30
// }

// $sequence "auto_leftright" {
	// "aim_right"
	// "aim_left"
	// fps 30
	// // subtract "aim_neutral" 0
	// // delta
	// autoplay
	// blendwidth 2
	// blend "aim_yaw" -60 60
// }

// $sequence "auto_updown" {
	// "aim_up"
	// "aim_down"
	// fps 30
	// // subtract "aim_neutral" 0
	// // delta
	// autoplay
	// blendwidth 2
	// blend "aim_pitch" -15 15
// }

// $sequence "carry_pose" "turret_boxed_anims\carry_pose.smd" {
	// fps 30
// }

// $sequence "3penny_lo" "turret_boxed_anims\3penny_lo.smd" {
	// fps 24
// }

// $sequence "3penny_mid" "turret_boxed_anims\3penny_mid.smd" {
	// fps 24
// }

// $sequence "3penny_hi" "turret_boxed_anims\3penny_hi.smd" {
	// fps 24
// }

// $sequence "3penny_perc" "turret_boxed_anims\3penny_perc.smd" {
	// fps 24
// }

// $sequence "recital_lo" "turret_boxed_anims\recital_lo.smd" {
	// fps 24
// }

// $sequence "recital_mid" "turret_boxed_anims\recital_mid.smd" {
	// fps 24
// }

// $sequence "recital_hi" "turret_boxed_anims\recital_hi.smd" {
	// fps 24
// }

// $sequence "recital_perc" "turret_boxed_anims\recital_perc.smd" {
	// fps 24
// }

$collisionmodel "turret_boxed_physics.smd"
{
	$concave
	$mass 40.0
	$inertia 1.00
	$damping 0.10
	$rotdamping 0.00
}

// $collisiontext
// {
	// break 
	// {
		// "model" "npcs/turret/turret_fx_break_gib2"
		// "fadetime" "20.0"
		// "debris" "1"
		// "burst" "500"
	// }
	// break 
	// {
		// "model" "npcs/turret/turret_fx_break_gib3"
		// "fadetime" "20.0"
		// "debris" "1"
		// "burst" "500"
	// }
	// break 
	// {
		// "model" "npcs/turret/turret_fx_break_gib12"
		// "fadetime" "20.0"
		// "debris" "1"
		// "burst" "500"
	// }
	// break 
	// {
		// "model" "npcs/turret/turret_fx_break_gib13"
		// "fadetime" "20.0"
		// "debris" "1"
		// "burst" "500"
	// }
	// break 
	// {
		// "model" "npcs/turret/turret_fx_break_gib15"
		// "fadetime" "20.0"
		// "debris" "1"
		// "burst" "500"
	// }
	// break 
	// {
		// "model" "npcs/turret/turret_fx_break_gib16"
		// "fadetime" "20.0"
		// "debris" "1"
		// "burst" "500"
	// }
	// break 
	// {
		// "model" "npcs/turret/turret_fx_break_gib24"
		// "fadetime" "20.0"
		// "debris" "1"
		// "burst" "500"
	// }
	// break 
	// {
		// "model" "npcs/turret/turret_fx_break_gib25"
		// "fadetime" "20.0"
		// "debris" "1"
		// "burst" "500"
	// }
// }


$keyvalues
{
	prop_data 
	{
		"base" "Metal.Medium"
		"health" "40"
	}
}
