// Created by Crowbar 0.55

$modelname "props_gameplay/shredder_left_a.mdl"

$staticprop

$bodygroup "default"
{
	studio "shredder_left_a_model.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -64 0 -46.154

$cdmaterials "models\props_gameplay"
$cdmaterials ""

$cbox 0 0 0 0 0 0

$bbox -512 -128 -92.309 512 0 0


$sequence "BindPose" {
	"shredder_left_a_anim_@BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
