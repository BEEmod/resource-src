$modelname "props_map_editor/bee2/retro/hep_catcher.mdl"

$bodygroup "Body"
{
	studio "under_hep_catcher_catcher.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 -71

$cdmaterials "BEE2\models\props_map_editor\"

$cbox 0 0 0 0 0 0

$bbox -48 -48 -142 48 48 0

$definebone "base" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "pellet" "base" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "arms" "base" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "light_north" "base" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "light_south" "base" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "light_east" "base" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "light_west" "base" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "arm_base" "base" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"under_hep_catcher_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "expand" {
	"under_hep_catcher_anims\expand.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "contract" {
	"under_hep_catcher_anims\contract.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
