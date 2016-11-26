// Created by Crowbar 0.36.0.0

$ModelName "props_map_editor/arm4_blk_90deg.mdl"

$BodyGroup "Body"
{
	studio "arm4_blk_90deg_reference.smd"
}


$SurfaceProp "metalpanel"

$Contents "solid"

$MaxEyeDeflection 90

$MostlyOpaque

$CDMaterials "models\props_map_editor"
$CDMaterials "models\props_map_editor"
$CDMaterials "models\props_map_editor"
$CDMaterials ""

$CBox 0 0 0 0 0 0

$BBox -64 -64 -63 64 64 65.169


$Sequence "idle" {
	"arm4_blk_90deg_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
