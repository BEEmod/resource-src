// Created by Crowbar 0.36.0.0

$modelname "BEE2/props_overgrown/arm_stairs.mdl"

$BodyGroup "Body"
{
	studio "arm_8panel_reference.smd"
}

$texturegroup "skinfamilies" {
	{ "arm_64x64_rusty" }
	{ "arm_64x64_rusty_error" }
	{ "arm_64x64_rusty_off" }
}

// For: arm64 skin, railing (black-wall)
$cdmaterials "models/anim_wp/" "metal/"

// This list shows the VMT file names used in the SMD files.
// "models\anim_wp\arm_64x64.vmt"
// "models\anim_wp\arm64x64_rail.vmt"


$SurfaceProp "metalpanel"

$Contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $IllumPosition 0 64 -34.045

$Attachment "panel_attach_03" "panel_attach_03" 0 0 0 rotate 0 0 0
$Attachment "panel_attach_04" "panel_attach_04" 0 0 0 rotate 0 0 0
$Attachment "panel_attach_01" "panel_attach_01" 0 0 0 rotate 0 0 0
$Attachment "panel_attach_02" "panel_attach_02" 0 0 0 rotate 0 0 0

// Clipping box or view bounding box.
$CBox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$BBox -191 -63 -70 63 63 -2

$Sequence "idle" {
	"arm_8panel_anims\idle.smd"
}

$Sequence "up" {
	"arm_8panel_anims\up.smd"
}

$Sequence "down" {
	"arm_8panel_anims\down.smd"
}
