// Created by Crowbar 0.36.0.0

$ModelName "props_map_editor/protruding_ped_left.mdl"

$BodyGroup "Body"
{
	studio "protruding_ped_left_reference.smd"
}


$SurfaceProp "metalpanel"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials ""

$CBox 0 0 0 0 0 0

$BBox -52.074 -12.65 -64.003 0 12.65 6.01

$DefineBone "pedestal_button_root" "" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_geo_1" "pedestal_button_root" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_explode_top_01" "pedestal_button_root" 0 0 -32 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_geo_2" "pedbut_explode_top_01" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_explode_top_02" "pedestal_button_root" 0 0 -32 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_geo_3" "pedbut_explode_top_02" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_explode_top_03" "pedestal_button_root" 0 0 -32 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_geo_4" "pedbut_explode_top_03" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_explode_top_04" "pedestal_button_root" 0 0 -32 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_geo_5" "pedbut_explode_top_04" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_explode_top_05" "pedestal_button_root" 0 0 -32 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_geo_6" "pedbut_explode_top_05" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_explode_top_06" "pedestal_button_root" 0 0 -32 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_geo_7" "pedbut_explode_top_06" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_explode_top_07" "pedestal_button_root" 0 0 -32 0 0 0 0 0 0 0 0 0
$DefineBone "pedbut_geo_8" "pedbut_explode_top_07" 0 0 0 0 0 0 0 0 0 0 0 0


$Sequence "idle" {
	"protruding_ped_left_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "explodeOut" {
	"protruding_ped_left_anims\explodeOut.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "explodeIn" {
	"protruding_ped_left_anims\explodeIn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "push" {
	"protruding_ped_left_anims\push.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
