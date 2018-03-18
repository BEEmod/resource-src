// Created by Crowbar 0.36.0.0

$ModelName "BEE2/cube_color/dropper_cowl_clean.mdl"

$BodyGroup "Body"
{
	studio "dropper_color_ref.smd"
}

$SurfaceProp "metalpanel"

$Contents "solid"

$staticprop

$hboxset "default"
$hbox 0 "static_prop" -58 -58 -8  58 58 8

// Match to the dropper's position, that ensures they get similar lighting.
$illumposition 0 0 32

$CDMaterials "models/props_backstage"

$Sequence "idle" {
	"anim_idle.smd"
	fps 30
}
