// Created by Crowbar 0.74

$modelname "hmw/props/cube_flip_tool.mdl"

$bodygroup "mesh"
{
	studio "cube_flip_tool.smd"
}


$surfaceprop "glass"

$contents "solid"

$illumposition -44 0 8

$mostlyopaque

$cdmaterials "models\hmw\props\"

$cbox 0 0 0 0 0 0

$bbox -43.152 -88 0 43.152 0 16

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"cube_flip_tool_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$collisionjoints "cube_flip_tool_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "


	$jointconstrain "arm" x limit 0 0 0
	$jointconstrain "arm" y limit 0 0 0
	$jointconstrain "arm" z limit 0 0 0
}
