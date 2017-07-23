// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_clean/tuleby/pgun_button_base.mdl"

$BodyGroup "base"
{
	studio "pgun_btn_base.smd"
}

$staticprop

$SurfaceProp "default"

$hbox 0 "static_prop" -64 -64 -8 64 64 0

$Contents "solid"

$cdMaterials "BEE2/models/props_clean/tuleby/"

$TextureGroup "skinfamilies" {
	{ "bullseye_blue" "screen_blue" }
	{ "bullseye_oran" "screen_oran" }
}

$Sequence "BindPose" "pgun_btn_base"

$collisionmodel	"pgun_btn_base_phy"
{
	$mass 1000
}
