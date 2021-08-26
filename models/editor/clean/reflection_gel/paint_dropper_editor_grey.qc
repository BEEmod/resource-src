// Created by Crowbar 0.68

$ModelName "props_map_editor/paint_dropper_editor_grey.mdl"

$BodyGroup "body"
{
	studio "paint_dropper_editor_ref.smd"
}


$SurfaceProp "default"

$Contents "solid"

$IllumPosition -0.314 -0.092 -24.896

$CDMaterials "BEE2\models\props_map_editor\"

$CBox 0 0 0 0 0 0

$BBox -64 -64 -64 64 64 16

$DefineBone "Paintdropper_root" "" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "Paintdropper_Base" "Paintdropper_root" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "polySurface126" "Paintdropper_Base" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "polySurface122" "Paintdropper_Base" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "Paintdropper_Casing" "Paintdropper_root" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "polySurface116" "Paintdropper_Casing" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "polySurface124" "Paintdropper_Casing" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "Paintdropper_Nozzle" "Paintdropper_root" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "polySurface125" "Paintdropper_Nozzle" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "Paintdropper_Ring_02" "Paintdropper_root" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "polySurface21" "Paintdropper_Ring_02" 0 0.000012 0 0 -179.999978 0 0 0 0 0 0 0
$DefineBone "Paintdropper_Ring_01" "Paintdropper_root" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "polySurface1" "Paintdropper_Ring_01" 0 0.000087 0 0 -179.999978 0 0 0 0 0 0 0
$DefineBone "Paintdropper_internal" "Paintdropper_root" 0 0 0 0 0 0 0 0 0 0 0 0
$DefineBone "polySurface127" "Paintdropper_internal" 0 -0.000264 0 0 0 0 0 0 0 0 0 0
$DefineBone "polySurface123" "Paintdropper_internal" 0 14.207745 0 0 0 0 0 0 0 0 0 0
$DefineBone "Cannister_01" "Paintdropper_internal" 13.039523 -12.128948 -46.550488 -72.664573 -163.038869 163.767842 0 0 0 0 0 0
$DefineBone "polySurface118" "Cannister_01" 48.394985 16.284246 -0.822983 73.376183 -175.013339 -179.999964 0 0 0 0 0 0
$DefineBone "Cannister_02" "Paintdropper_internal" 34.271694 -12.128972 -34.094372 -43.676348 -173.097307 175.221031 0 0 0 0 0 0
$DefineBone "polySurface119" "Cannister_02" 48.395107 16.284248 -0.8157 43.884556 -175.013393 179.999978 0 0 0 0 0 0
$DefineBone "Cannister_03" "Paintdropper_internal" 46.6175 -12.128952 -12.798031 -14.330992 -174.852679 178.722719 0 0 0 0 0 0
$DefineBone "polySurface121" "Cannister_03" 48.395161 16.284325 -0.813958 14.386627 -175.013284 -179.999978 0 0 0 0 0 0


$Sequence "idle" {
	"paint_dropper_editor_grey_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "explodeOut" {
	"paint_dropper_editor_grey_anims\explodeOut.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "explodeIn" {
	"paint_dropper_editor_grey_anims\explodeIn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
