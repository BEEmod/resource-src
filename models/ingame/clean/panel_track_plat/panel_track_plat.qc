// Created by Crowbar 0.55

$ModelName "BEE2/props_clean/panel_track_plat.mdl"

$BodyGroup "default"
{
	studio "panel_track_plat.smd"
}

$staticprop

$SurfaceProp "metalpanel"

$Contents "solid"

$IllumPosition 0 0 -30

$MostlyOpaque

$CDMaterials "models/anim_wp/arm_interior_192"
$CDMaterials "models/anim_wp/framework/"
$CDmaterials "models/a4_destruction/" //Backpanels
$CDMaterials "BEE2/models/props_overgrown/"

$texturegroup "skinfamilies" {
	{
		"arm_interior_192_bose"
		"arm_motionplatform"
		"squarebeams_main"
		"backpanels_vtx"
	}
	{
		"arm_interior_192_bose_rusty"
		"arm_motionplatform_rusty"
		"squarebeams_skin2"
		"metalwall_bts_006a"
	}
}
$CBox 0 0 0 0 0 0

$BBox -80.207 -64 -90.562 68.474 64 0.054

// $DefineBone "arm_192_root" "" 0 0 0 0 0 0 0 0 0 0 0 0
// $DefineBone "arm_192_baseZ" "arm_192_root" 0 -58.703487 -77.356812 0 0 0 0 0 0 0 0 0
// $DefineBone "arm_192_pistonC_tip" "arm_192_root" -0.000086 -21.554855 34.597271 69.288752 -89.999812 -179.999856 0 0 0 0 0 0
// $DefineBone "arm_192_pistonA_tip" "arm_192_root" -1.910466 -18.265453 57.967949 72.049843 -89.756131 -179.768012 0 0 0 0 0 0
// $DefineBone "arm_192_pistonB_tip" "arm_192_root" 2.205595 -21.122349 44.978222 -47.509895 -89.999901 179.999747 0 0 0 0 0 0
// $DefineBone "arm_192_pistonC_base" "arm_192_root" 0 -51.515415 -44.643978 -69.288745 90.000188 -0.000159 0 0 0 0 0 0
// $DefineBone "arm_192_pistonB_base" "arm_192_root" 2.205626 -39.183445 64.69529 47.509895 90.000106 0.000043 0 0 0 0 0 0
// $DefineBone "arm_192_baseY" "arm_192_baseZ" 0 15.37672 12.722061 0 0 0 0 0 0 0 0 0
// $DefineBone "arm_192_baseX01" "arm_192_baseY" 0 -30.090759 13.816814 0 0 -0.180795 0 0 0 0 0 0
// $DefineBone "arm_192_baseX02" "arm_192_baseX01" 0 38.612843 109.733696 0 0 0.561377 0 0 0 0 0 0
// $DefineBone "arm_192_baseX03" "arm_192_baseX02" 0 18.121199 -98.00132 0 0 -0.380304 0 0 0 0 0 0
// $DefineBone "arm_192_tip" "arm_192_baseX03" 0 15.687047 39.085339 0 0 -0.000279 0 0 0 0 0 0

// $BoneMerge "arm_192_root"
// $BoneMerge "arm_192_baseZ"
// $BoneMerge "arm_192_pistonC_tip"
// $BoneMerge "arm_192_pistonA_tip"
// $BoneMerge "arm_192_pistonB_tip"
// $BoneMerge "arm_192_pistonC_base"
// $BoneMerge "arm_192_pistonB_base"
// $BoneMerge "arm_192_baseY"
// $BoneMerge "arm_192_baseX01"
// $BoneMerge "arm_192_baseX02"
// $BoneMerge "arm_192_baseX03"
// $BoneMerge "arm_192_tip"


$Sequence "BindPose" {
	"anims/BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// $Sequence "laserintro" {
// 	"anims\laserintro.smd"
// 	fadein 0.2
// 	fadeout 0.2
// 	fps 24
// }
// 
// $Sequence "pulltherug" {
// 	"arm_interior_128_anims\pulltherug.smd"
// 	fadein 0.2
// 	fadeout 0.2
// 	fps 24
// }
// 
// $Sequence "testanim" {
// 	"anims\testanim.smd"
// 	fadein 0.2
// 	fadeout 0.2
// 	fps 24
// }
// 
