// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_p1/laser_emitter.mdl"

$bodygroup "Body"
{
	studio "laser_emitter_center_reference.smd"
}

$lod 20
{
	replacemodel "laser_emitter_center_reference.smd" "laser_emitter_center_reference_lod1.smd"
}
$lod 40
{
	replacemodel "laser_emitter_center_reference.smd" "laser_emitter_center_reference_lod2.smd"
}
$lod 80
{
	replacemodel "laser_emitter_center_reference.smd" "laser_emitter_center_reference_lod3.smd"
}

$mostlyopaque

$cdmaterials "BEE2/models/props_p1/" "models/props/"

// Model uses material "Laser_emitter.vmt"
// Model uses material "wall_glass.vmt"
// Model uses material "laser_emitter_rusted.vmt"

$attachment "laser_attachment" "lens" 0 0 2 rotate -90 0 0

$surfaceprop "metalpanel"

$contents "solid"

$illumposition 0 -20 0

$sequence "idle" "anims\idle.smd" {
	fps 30
	"ACT_IDLE" 1
}

$collisionmodel "laser_emitter_center_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0

}

