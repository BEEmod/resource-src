// Created by Crowbar 0.74

$modelname "hmw/props/cube_flip_tool_base.mdl"

$bodygroup "mesh"
{
	studio "cube_flip_tool_base.smd"
}


$surfaceprop "glass"

$contents "solid"

$illumposition -19 0 4

$cdmaterials "models\hmw\props\"

$cbox 0 0 0 0 0 0

$bbox -44 -38 0 44 0 8

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"cube_flip_tool_base_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}
