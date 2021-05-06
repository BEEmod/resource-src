// Created by Crowbar 0.64

$modelname "props_map_editor/bee2/clean/half_obs_center.mdl"

$staticprop

$bodygroup "body"
{
	studio "half_obs_center.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0.044 0 -34.474

$cdmaterials "models\props_map_editor"
$cdmaterials ""

$cbox 0 0 0 0 0 0

$bbox -64 -63.956 -68.948 64 64.044 0

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"half_obs_center_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
