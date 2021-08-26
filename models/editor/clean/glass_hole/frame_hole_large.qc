// Created by Crowbar 0.51.0.0

$modelname "props_test_chamber\frame_hole_large.mdl"

$staticprop

$bodygroup "Body"
{
	studio "frame_hole_large.smd"
}


$surfaceprop "metal"

$contents "solid"

$maxeyedeflection 90

$cdmaterials "models\props_lab\"

$cbox 0 0 0 0 0 0

$bbox -78.319 -78.319 -0.25 78.319 78.319 8.25


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "frame_hole_large_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
