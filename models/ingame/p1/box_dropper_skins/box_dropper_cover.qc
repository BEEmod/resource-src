
$ModelName "BEE2/props_p1/box_dropper_skins.mdl"

$BodyGroup "Body"
{
	studio "Box_dropper_Cover_reference.smd"
}

$LOD 50
{
	replacemodel "Box_dropper_Cover_reference.smd" "Box_dropper_Cover_reference_lod1.smd"
}
$texturegroup "skinfamilies" {
	{ "box_dropper" "off" }
	{ "box_dropper" "blue" }
	{ "box_dropper" "oran" }
	{ "box_dropper" "blink" }
}
// Texture is 32x32 spot @ (73, 232) in original.

$SurfaceProp "metalpanel"

$Contents "solid"

$IllumPosition 0 0 27.314

$CDMaterials "BEE2/models/props_p1/box_dropper_light/" "models/props/"

$CBox 0 0 0 0 0 0

$BBox -55.408 -55.408 -12.379 55.408 55.408 67.008

$DefineBone "Scene_Root" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$DefineBone "Root" "Scene_Root" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "Cover_4" "Root" -18 -0.484745 18 -45.000011 0 0 0 0 0 0 0 0
$DefineBone "Cover_3" "Root" 18 -0.484745 18 -45.000011 -180.000005 180.000005 0 0 0 0 0 0
$DefineBone "Cover_2" "Root" 18 -0.484745 -18 45.000025 180.000005 180.000005 0 0 0 0 0 0
$DefineBone "Cover_1" "Root" -18 -0.484745 -18 44.999991 0 0 0 0 0 0 0 0
$DefineBone "Arm_4_Slider" "Root" -34.063774 67.008171 34.143074 -45.000011 0 0 0 0 0 0 0 0
$DefineBone "Arm_4_Rot1" "Arm_4_Slider" 0 -11.567142 0 0 0 0 0 0 0 0 0 0
$DefineBone "Arm_4_Rot2" "Arm_4_Rot1" 0.558036 -55.855721 17.898506 0 0 0 0 0 0 0 0 0
$DefineBone "Arm_4_Rot3" "Arm_4_Rot2" -0.599936 -11.172659 -59.322746 0.000019 180.000005 180.000005 0 0 0 0 0 0
$DefineBone "Arm_3_Slider" "Root" 34.155308 67.008171 34.143074 -45.000011 -180.000005 180.000005 0 0 0 0 0 0
$DefineBone "Arm_3_Rot1" "Arm_3_Slider" 0 -11.567142 0 0 0 0 0 0 0 0 0 0
$DefineBone "Arm_3_Rot2" "Arm_3_Rot1" 0.500412 -55.855713 -17.892462 0 0 0 0 0 0 0 0 0
$DefineBone "Arm_3_Rot3" "Arm_3_Rot2" -0.599933 -11.143444 59.434349 0 0 0 0 0 0 0 0 0
$DefineBone "Arm_2_Slider" "Root" 34.155308 67.008171 -34.076008 45.000025 180.000005 180.000005 0 0 0 0 0 0
$DefineBone "Arm_2_Rot1" "Arm_2_Slider" 0 -11.567136 -0.000002 0 0 0 0 0 0 0 0 0
$DefineBone "Arm_2_Rot2" "Arm_2_Rot1" 0.481153 -55.855713 17.981697 0 0 0 0 0 0 0 0 0
$DefineBone "Arm_2_Rot3" "Arm_2_Rot2" -0.439252 -11.143444 -59.464474 0.000019 -180.000005 -180.000005 0 0 0 0 0 0
$DefineBone "Arm_1_Slider" "Root" -34.063774 67.008171 -34.076008 44.999991 0 0 0 0 0 0 0 0
$DefineBone "Arm_1_Rot1" "Arm_1_Slider" 0 -11.567136 0 0 0 0 0 0 0 0 0 0
$DefineBone "Arm_1_Rot2" "Arm_1_Rot1" 0.530167 -55.855713 -18.041183 0 0 0 0 0 0 0 0 0
$DefineBone "Arm_1_Rot3" "Arm_1_Rot2" -0.430647 -11.143444 59.499271 0 0 0 0 0 0 0 0 0


$Sequence "idle_closed" {
	"box_dropper_cover_anims\idle_closed.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "open" {
	"box_dropper_cover_anims\open.smd"
	{ event AE_CL_PLAYSOUND 2 "BEE2.P1.cdrop_open" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "close" {
	"box_dropper_cover_anims\close.smd"
	{ event AE_CL_PLAYSOUND 2 "BEE2.P1.cdrop_close" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

// $CollisionJoints "box_dropper_cover_physics.smd"
// {
// 	$mass 120
// 	$inertia 1
// 	$damping 0
// 	$rotdamping 0
// 	$rootbone " "
// 	$concave
// 	$maxconvexpieces 1

// }
