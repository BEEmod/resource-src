// Created by Crowbar 0.34.0.0

$ModelName "props\Security_Camera.mdl"

$BodyGroup "studio"
{
	studio "security_camera_reference.smd"
}

$LOD 15
{
	replacemodel "security_camera_reference.smd" "security_camera_reference_lod1.smd"
}
$LOD 60
{
	replacemodel "security_camera_reference.smd" "security_camera_reference_lod2.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "models\props\"

$TextureGroup "skinfamilies"
{
	{ "camera"        }
	{ "camera_skin02" }
}

$Attachment "lens" "UD_Rot1" -11.5 1 15 rotate -90 90 0
$Attachment "light" "UD_Rot1" -17.9 -3.15 12.9 rotate -90 90 0

$CBox 0 0 0 0 0 0

$BBox -0.352 -19.428 -27.942 34.506 19.062 9.904


$PoseParameter "aim_yaw" -180 180 0
$PoseParameter "aim_pitch" -170 170 0

$Animation "aim_neutral" "security_camera_anims\aim_neutral.smd" {
	fps 30
}

$Animation "aim_UD1" "security_camera_anims\aim_UD1.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "aim_neutral" 0
}

$Animation "aim_UD2" "security_camera_anims\aim_UD2.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "aim_neutral" 0
}

$Animation "aim_UD3" "security_camera_anims\aim_UD3.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "aim_neutral" 0
}

$Animation "aim_UD4" "security_camera_anims\aim_UD4.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "aim_neutral" 0
}

$Animation "aim_UD5" "security_camera_anims\aim_UD5.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "aim_neutral" 0
}

$Animation "aim_UD6" "security_camera_anims\aim_UD6.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "aim_neutral" 0
}

$Animation "aim_UD7" "security_camera_anims\aim_UD7.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "aim_neutral" 0
}

$Animation "aim_LR1" "security_camera_anims\aim_LR1.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "aim_neutral" 0
}

$Animation "aim_LR2" "security_camera_anims\aim_LR2.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "aim_neutral" 0
}

$Animation "aim_LR3" "security_camera_anims\aim_LR3.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "aim_neutral" 0
}

$Animation "aim_LR4" "security_camera_anims\aim_LR4.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "aim_neutral" 0
}

$Animation "aim_LR5" "security_camera_anims\aim_LR5.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "aim_neutral" 0
}

$Sequence "idle" {
	"security_camera_anims\idle.smd"
	activity "ACT_SECURITY_CAMERA_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "aim_updown" {
	"security_camera_anims\aim_updown.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "aim_leftright" {
	"security_camera_anims\aim_leftright.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "auto_leftright" {
	"aim_LR1"
	"aim_LR2"
	"aim_LR3"
	"aim_LR4"
	"aim_LR5"
	autoplay
	blend "aim_yaw" -180 180
	blendwidth 5
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "aim_neutral" 0
}

$Sequence "auto_updown" {
	"aim_UD1"
	"aim_UD2"
	"aim_UD3"
	"aim_UD4"
	"aim_UD5"
	"aim_UD6"
	"aim_UD7"
	autoplay
	blend "aim_pitch" -170 170
	blendwidth 7
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "aim_neutral" 0
}

$Sequence "disabled" {
	"security_camera_anims\disabled.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "security_camera_physics.smd"
{
	$mass 20
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

$KeyValues
{
	prop_data 
	{
		"base" "Metal.small"
	}
}
