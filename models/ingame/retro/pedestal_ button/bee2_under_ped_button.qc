// Created by Crowbar 0.36.0.0

$upaxis Z

$origin 0 -48 0

$ModelName "props_map_editor/bee2_under_ped_button.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "bee2_under_ped_button_reference.smd"
}


$SurfaceProp "no_decal"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "BEE2\models\props_map_editor\"

$CBox 0 0 0 0 0 0

$BBox -64 -64 -80 64.001 64 0


$Sequence "idle" {
	"bee2_under_ped_button_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
