// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_underground/tuleby/pgun_button.mdl"

$BodyGroup "default"
{
	studio "pgun_btn_retro_ref.smd"
}


$SurfaceProp "default"

$Contents "solid"

$CDMaterials "models/props_underground"
$CDMaterials "BEE2/models/props_underground/tuleby/"

$BBox -51.231 -50.595 -0.066 51.559 50.529 15.75

$texturegroup "skinfamilies" {
	// Skin 0 only used by prop_under_button...
	{ "pgun_btn_top_retro_oran" }
	{ "pgun_btn_top_retro_blue" }
}


$Sequence "BindPose" {
	"underground_floor_button_anims\BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "release" {
	"underground_floor_button_anims\release.smd"
	{ event AE_CL_PLAYSOUND 0 "Portal.OGButtonRelease" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "release_idle" {
	"underground_floor_button_anims\release_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "press_idle" {
	"underground_floor_button_anims\press_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "press" {
	"underground_floor_button_anims\press.smd"
	{ event AE_CL_PLAYSOUND 0 "Portal.OGButtonDepress" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$CollisionJoints "underground_floor_button_physics.smd"
{
	$mass 7742.671
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone "underground_floor_button_root"

	$jointconstrain "underground_floor_button_button" x limit 0 0 0
	$jointconstrain "underground_floor_button_button" y limit 0 0 0
	$jointconstrain "underground_floor_button_button" z limit 0 0 0
}

