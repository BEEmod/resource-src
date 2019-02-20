// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_clean/tuleby/pgun_button_blue.mdl"

$BodyGroup "btn"
{
	studio "pgun_btn_ref.smd"
}

$LOD 50
{
	replacemodel "pgun_btn_ref.smd" "pgun_btn_lod1.smd"
}
$LOD 100
{
	replacemodel "pgun_btn_ref.smd" "pgun_btn_lod2.smd"
}

$SurfaceProp "default"

$Contents "solid"

$cdMaterials "BEE2/models/props_clean/tuleby/"

$renamematerial "pgun_btn_sign_cube_off" "pgun_btn_sign_player_off" // Sign
$renamematerial "pgun_btn_top_oran" "pgun_btn_top_blue" // Orange/blue moving bit (red)
$renamematerial "screen_oran" "screen_blue" // Base lighting

$TextureGroup "skinfamilies" {
	{
	"portal_button_blue"  // Base lights
	"pgun_btn_sign_player_off"
	}
	{
	"portal_button_orange"
	"pgun_btn_sign_player_on"
	}
}


$Sequence "BindPose" {
	"portal_button_anims\BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "up" {
	"portal_button_anims\up.smd"
	{ event AE_CL_PLAYSOUND 0 "Portal.ButtonRelease" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "idledown" {
	"portal_button_anims\idledown.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "down" {
	"portal_button_anims\down.smd"
	{ event AE_CL_PLAYSOUND 0 "Portal.ButtonDepress" }
	{ event AE_CL_PLAYSOUND 9 "World.RobotAirRelease" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$CollisionJoints "portal_button_physics.smd"
{
	$mass 1967.366
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concaveperjoint
}

