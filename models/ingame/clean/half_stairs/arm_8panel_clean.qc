// Created by Crowbar 0.36.0.0

$modelname "BEE2/panels/arm_half_stairs.mdl"

$BodyGroup "Body"
{
	studio "arm_8panel_clean_ref.smd"
}

$origin 0 128 0

// $texturegroup "skinfamilies" {
	// { "arm_64x64_rusty" }
	// { "arm_64x64_rusty_error" }
	// { "arm_64x64_rusty_off" }
// }

// For: arm64 skin, railing (black-wall)
$cdmaterials "models/anim_wp/" //"metal/"

// This list shows the VMT file names used in the SMD files.
// "models\anim_wp\arm_64x64.vmt"
// "models\anim_wp\arm64x64_rail.vmt"


$SurfaceProp "metalpanel"

$Contents "solid"

$IllumPosition 0 0 -16

$Attachment "panel_attach_lower" "panel_attach_01" -32 0 0 rotate 0 0 0
$Attachment "panel_attach_upper" "panel_attach_02" -32 0 0 rotate 0 0 0

// Clipping box or view bounding box.
$CBox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
//$BBox -63 -63 -70 63 63 -2

$Sequence "idle" {
	"../over_panel/arm_8panel_anims\idle.smd"
}

$Sequence "parent_pose" {
	// Special position for the animations
	"anims/parent_pose.smd"
}

$Sequence "up" {
	"../over_panel/arm_8panel_anims\up.smd"
}

$Sequence "down" {
	"../over_panel/arm_8panel_anims\down.smd"
}

$Sequence "raised" {
	"anims/up_idle.smd"
}