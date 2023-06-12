// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_p1/laser_catcher.mdl"

$bodygroup "Body"
{
	studio "laser_catcher_center_reference.smd"
}

$lod 50
{
	replacemodel "laser_catcher_center_reference.smd" "laser_catcher_center_reference_lod1.smd"
}
$lod 100
{
	replacemodel "laser_catcher_center_reference.smd" "laser_catcher_center_reference_lod2.smd"
}

$cdmaterials "BEE2/models/props_p1/" "models/props/"

$texturegroup "skinfamilies" {
	{ "Laser_catcher.vmt" }
	{ "laser_catcher_on.vmt" }
	// Don't load the rusted ones, we don't need those.
	{ "Laser_catcher.vmt" }
	{ "laser_catcher_on.vmt" }
	// { "Laser_catcher_rusted.vmt" }
	// { "laser_catcher_rusted_on.vmt" }
}

// Model uses material "Laser_catcher.vmt"
// Model uses material "wall_glass.vmt"
// Model uses material "laser_catcher_on.vmt"
// Model uses material "laser_catcher_rusted.vmt"
// Model uses material "laser_catcher_rusted_on.vmt"

$attachment "laser_point" "root" 0 0 42 rotate 0 0 0
$attachment "lens_center" "root" 0 0 43 rotate 0 0 0
$attachment "laser_target" "root" 0 0 36 rotate 0 0 0
$attachment "particle_emitter" "root" 0 0 42 rotate 0 0 0

$surfaceprop "metalpanel"

$contents "solid"

$sequence "idle" "laser_catcher_center_anims\idle.smd" {
	fps 30
	"ACT_IDLE" 1
}

$sequence "OpenIdle" "laser_catcher_center_anims\OpenIdle.smd" {
	fps 30
}

$sequence "spin" "laser_catcher_center_anims\spin.smd" {
	fps 30
	loop
}

// $collisionmodel "laser_catcher_center_physbox.smd"
// {
	// $mass 120
	// $inertia 1
	// $damping 0
	// $rotdamping 0
	// $concave
	// $concaveperjoint
// }

