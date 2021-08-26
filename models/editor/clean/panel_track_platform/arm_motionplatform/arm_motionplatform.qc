// Created by Crowbar 0.55

$ModelName "props_map_editor/arm_motionplatform.mdl"

$StaticProp

$BodyGroup "body"
{
	studio "arm_motionplatform.smd"
}


$SurfaceProp "default"

$Contents "solid"

$IllumPosition 0 11.773 16.347

$CDMaterials "models\props_map_editor"
$CDMaterials "models\props_map_editor"
$CDMaterials ""

$CBox 0 0 0 0 0 0

$BBox -57.027 -64 -57.907 33.481 64 90.601

$DefineBone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$Sequence "ref" {
	"arm_motionplatform_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
