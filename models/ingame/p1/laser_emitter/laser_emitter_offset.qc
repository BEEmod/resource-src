// Created by Crowbar 0.74

$modelname "BEE2/props_p1/laser_emitter_offset.mdl"

$bodygroup "Body"
{
	studio "laser_emitter_offset_reference.smd"
}

$lod 20
{
	replacemodel "laser_emitter_offset_reference.smd" "laser_emitter_offset_reference_lod1.smd"
	replacebone "body" "root"
	replacebone "lens" "body"
}
$lod 40
{
	replacemodel "laser_emitter_offset_reference.smd" "laser_emitter_offset_reference_lod2.smd"
	replacebone "body" "root"
	replacebone "lens" "body"
}
$lod 80
{
	replacemodel "laser_emitter_offset_reference.smd" "laser_emitter_offset_reference_lod3.smd"
	replacebone "body" "root"
	replacebone "lens" "body"
}

$surfaceprop "metalpanel"

$contents "solid"

$illumposition 0 -20 0

$mostlyopaque

$cdmaterials "BEE2/models/props_p1/" "models/props/"

$attachment "laser_attachment" "lens" 0 0 2 rotate -90 0 0

$cbox 0 0 0 0 0 0

$sequence "idle" {
	"anims/offset_idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "laser_emitter_offset_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
