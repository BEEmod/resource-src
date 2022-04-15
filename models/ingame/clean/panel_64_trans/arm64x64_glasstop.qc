
$ModelName "anim_wp/room_transform/arm64x64_glass_top.mdl"
// $ModelName "BEE2/panels/arm64x64_glass_top.mdl"

$BodyGroup "default"
{
	studio "arm64x64_glasstop_ref.smd"
}

// Top used LOD 50, bottom used 20, 40, 80

$LOD 20
{
	replacemodel "arm64x64_glasstop_ref.smd" "arm64x64_glasstop_lod1.smd"
}
$LOD 40
{
	replacemodel "arm64x64_glasstop_ref.smd" "arm64x64_glasstop_lod2.smd"
}
$LOD 80
{
	replacemodel "arm64x64_glasstop_ref.smd" "arm64x64_glasstop_lod3.smd"
}

$SurfaceProp "default"

$Contents "solid"

$IllumPosition 0 0 0 "arm64x64_export_03X"

$CDMaterials "models\anim_wp"
$CDMaterials "models\anim_wp\circle_shield"

$TextureGroup "skinfamilies"
{
	{ "arm_64x64"       "circle_shield_main"  }
	// { "arm_64x64_off"   "circle_shield_off"   }
	{ "arm_64x64_error" "circle_shield_red" }
}

$Attachment "panel_attach" "arm64x64_export_013" 0 -1 0 rotate -90 0 0

$DefineBone "arm64x64_export_root" "" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "arm64x64_export_01" "arm64x64_export_root" 0 -12.777454 -31.16819 0 0 0 0 0 0 0 0 0
$DefineBone "arm64x64_export_02" "arm64x64_export_01" 0 -29.179554 0 0 0 0 0 0 0 0 0 0
$DefineBone "arm64x64_export2a" "arm64x64_export_02" 0 0 6.480215 0 0 0 0 0 0 0 0 0
$DefineBone "arm64x64_export_03Z" "arm64x64_export2a" 0 -3.738605 12.401443 0 0.000034 0 0 0 0 0 0 0
$DefineBone "arm64x64_export_03X" "arm64x64_export2a" 0 -3.738605 12.401443 -0.000005 0.000034 0.777379 0 0 0 0 0 0
$DefineBone "arm64x64_export_03Y" "arm64x64_export2a" 0 -3.738605 12.401443 -0.000005 0.000034 0 0 0 0 0 0 0
$DefineBone "arm64x64_export_04_telescope" "arm64x64_export_03X" 0 -14.252228 15.70121 -47.769496 -90.000003 90.000003 0 0 0 0 0 0
$DefineBone "arm64x64_export_05" "arm64x64_export_04_telescope" -0.000011 0.000004 0 -0.000008 87.07481 -0.000001 0 0 0 0 0 0
$DefineBone "arm64x64_export_06" "arm64x64_export_05" 16.134029 0 -0.000001 0.000001 99.383173 -179.999978 0 0 0 0 0 0
$DefineBone "arm64x64_export_08" "arm64x64_export_06" 22.000746 1.716774 0.000009 -0.000027 1.998155 -0.000017 0 0 0 0 0 0
$DefineBone "arm64x64_export_09" "arm64x64_export_08" 27.261795 -0.948608 0.000001 0 0 0 0 0 0 0 0 0
$DefineBone "arm64x64_export_010" "arm64x64_export_09" -0.00002 -0.000025 -0.000001 -89.999989 -38.211452 0 0 0 0 0 0 0
$DefineBone "arm64x64_export_011" "arm64x64_export_010" 0.000002 9.646837 -0.056671 -0.336628 -90.000043 -90.000037 0 0 0 0 0 0
$DefineBone "arm64x64_export_012" "arm64x64_export_011" 0.000004 -23.751238 -0.000007 -0.000012 90.000009 -0.000018 0 0 0 0 0 0
$DefineBone "arm64x64_export_013" "arm64x64_export_012" -0.000004 8.563431 0.000005 -0.000002 0.000001 0.000005 0 0 0 0 0 0

$BoneMerge "arm64x64_export_root"
$BoneMerge "arm64x64_export_01"
$BoneMerge "arm64x64_export_02"
$BoneMerge "arm64x64_export2a"
$BoneMerge "arm64x64_export_03Z"
$BoneMerge "arm64x64_export_03X"
$BoneMerge "arm64x64_export_03Y"
$BoneMerge "arm64x64_export_04_telescope"
$BoneMerge "arm64x64_export_05"
$BoneMerge "arm64x64_export_06"
$BoneMerge "arm64x64_export_08"
$BoneMerge "arm64x64_export_09"
$BoneMerge "arm64x64_export_010"
$BoneMerge "arm64x64_export_011"
$BoneMerge "arm64x64_export_012"
$BoneMerge "arm64x64_export_013"


$Sequence "BindPose" {
	"arm64x64_interior_anims\BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$IncludeModel "anim_wp/room_transform/arm64x64_interior_animation.mdl"
