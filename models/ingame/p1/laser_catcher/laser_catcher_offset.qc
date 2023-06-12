// Created by Crowbar 0.74

$modelname "BEE2/props_p1/laser_catcher_offset.mdl"

$bodygroup "Body"
{
	studio "laser_catcher_offset_reference.smd"
}

$lod 40
{
	replacemodel "laser_catcher_offset_reference.smd" "laser_catcher_offset_reference_lod1.smd"
}
$lod 80
{
	replacemodel "laser_catcher_offset_reference.smd" "laser_catcher_offset_reference_lod2.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$illumposition 0 -5 0

$cdmaterials "BEE2/models/props_p1/" "models/props/"

$texturegroup "skinfamilies"
{
	{ "Laser_catcher"           }
	{ "laser_catcher_on"        }
	{ "Laser_catcher"           }
	{ "laser_catcher_on"        }
}

$attachment "laser_point" "root" 0 -1 42 rotate 0 0 0
$attachment "lens_center" "root" 0 -1 43 rotate 0 0 0
$attachment "laser_target" "root" 0 -1 36 rotate 0 0 0
$attachment "particle_emitter" "root" 0 -1 42 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -20 -32.25 -32.25 30 32.25 32.25

$sequence "idle" {
	"laser_catcher_offset_anims/idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "OpenIdle" {
	"laser_catcher_offset_anims/OpenIdle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "spin" {
	"laser_catcher_offset_anims/spin.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "laser_catcher_offset_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
