$modelname "props_map_editor/BEE2/retro/paint_dropper_speed.mdl"

$bodygroup "Body"
{
	studio "retro_paint_dropper_editor_reference.smd"
}

$surfaceprop "default"

$contents "solid"

$cdmaterials "BEE2/models/props_map_editor/under_gel_drop/"

$renamematerial dropper_blue dropper_oran

$definebone "Paintdropper_root" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Paintdropper_Base" "Paintdropper_root" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Paintdropper_Casing" "Paintdropper_root" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Paintdropper_Nozzle" "Paintdropper_root" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Paintdropper_Ring_02" "Paintdropper_root" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Paintdropper_Ring_01" "Paintdropper_root" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Paintdropper_internal" "Paintdropper_root" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Cannister_01" "Paintdropper_internal" 13.039523 -12.128948 -46.550488 -72.664559 -163.038869 163.767842 0 0 0 0 0 0
$definebone "Cannister_02" "Paintdropper_internal" 34.271694 -12.128972 -34.094372 -43.676328 -173.09732 175.221031 0 0 0 0 0 0
$definebone "Cannister_03" "Paintdropper_internal" 46.6175 -12.128952 -12.798031 -14.330985 -174.852706 178.722705 0 0 0 0 0 0

$sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeOut" {
	"anims\explodeOut.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "explodeIn" {
	"anims\explodeIn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}