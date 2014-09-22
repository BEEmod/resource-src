// Created by Crowbar 0.19.0.0

$modelname "props_ingame/p1/camera.mdl"

$bodygroup "studio"
{
	studio "security_camera_reference.smd"
}

$lod 40
{
	replacemodel "security_camera_reference.smd" "security_camera_reference_lod1.smd"
}

$poseparameter "aim_yaw" -180 180 0
$poseparameter "aim_pitch" -170 170 0

$cdmaterials "models\props\"

// Model uses material "Security_Camera.vmt"

$attachment "light" "UD_Rot1" -14.25 -5 16.3 rotate 0 -180 90
$attachment "Wire1_A" "Root1" 1.5 -6.2 1.5 rotate 0 0 135
$attachment "Wire2_A" "Root1" -2 -6.2 1.5 rotate 0 0 135
$attachment "Wire1_B" "UD_Rot1" -4.6 -0.5 -9.5 rotate 0 0 -90
$attachment "Wire2_B" "UD_Rot1" -4.6 0.5 -9.5 rotate 0 0 -90

$surfaceprop "metal"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0.741 -18.795 -3.385

// $bbox -2.112 -8.429 -22.792 40.076 10.275 15.703

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "Root1" -5.664962 -6.864112 -3.932176 5.096159 10.335182 25.57299
// $hbox 0 "LR_Rot1" -4.702686 -28.131449 -4.62667 9.399357 3.984253 4.136704
// $hbox 0 "UD_Rot1" -17.360939 -8.002748 -11.246175 0.822922 8.399668 17.356064


$animation "aim_neutral" "security_camera_anims\aim_neutral.smd" {
	fps 30
}
$animation "aim_UD1" "security_camera_anims\aim_UD1.smd" {
	fps 30
	// subtract "aim_neutral" 0
}
$animation "aim_UD2" "security_camera_anims\aim_UD2.smd" {
	fps 30
	// subtract "aim_neutral" 0
}
$animation "aim_UD3" "security_camera_anims\aim_UD3.smd" {
	fps 30
	// subtract "aim_neutral" 0
}
$animation "aim_UD4" "security_camera_anims\aim_UD4.smd" {
	fps 30
	// subtract "aim_neutral" 0
}
$animation "aim_UD5" "security_camera_anims\aim_UD5.smd" {
	fps 30
	// subtract "aim_neutral" 0
}
$animation "aim_UD6" "security_camera_anims\aim_UD6.smd" {
	fps 30
	// subtract "aim_neutral" 0
}
$animation "aim_UD7" "security_camera_anims\aim_UD7.smd" {
	fps 30
	// subtract "aim_neutral" 0
}
$animation "aim_LR1" "security_camera_anims\aim_LR1.smd" {
	fps 30
	// subtract "aim_neutral" 0
}
$animation "aim_LR2" "security_camera_anims\aim_LR2.smd" {
	fps 30
	// subtract "aim_neutral" 0
}
$animation "aim_LR3" "security_camera_anims\aim_LR3.smd" {
	fps 30
	// subtract "aim_neutral" 0
}
$animation "aim_LR4" "security_camera_anims\aim_LR4.smd" {
	fps 30
	// subtract "aim_neutral" 0
}
$animation "aim_LR5" "security_camera_anims\aim_LR5.smd" {
	fps 30
	// subtract "aim_neutral" 0
}


$sequence "idle" "security_camera_anims\idle.smd" {
	fps 30
	"ACT_SECURITY_CAMERA_IDLE" 1
	loop
}

$sequence "aim_updown" "security_camera_anims\aim_updown.smd" {
	fps 30
}

$sequence "aim_leftright" "security_camera_anims\aim_leftright.smd" {
	fps 30
}

$sequence "auto_leftright" {
	"aim_LR1"
	"aim_LR2"
	"aim_LR3"
	"aim_LR4"
	"aim_LR5"
	fps 30
	// subtract "aim_neutral" 0
	// delta
	autoplay
	blendwidth 5
	blend "aim_yaw" -180 180
}

$sequence "auto_updown" {
	"aim_UD1"
	"aim_UD2"
	"aim_UD3"
	"aim_UD4"
	"aim_UD5"
	"aim_UD6"
	"aim_UD7"
	fps 30
	// subtract "aim_neutral" 0
	// delta
	autoplay
	blendwidth 7
	blend "aim_pitch" -170 170
}

$collisionmodel "security_camera_physics.smd"
{
	$mass 20
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}


$keyvalues
{
	prop_data 
	{
		"base" "Metal.small"
	}
}
