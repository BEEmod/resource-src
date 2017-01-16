// Created by Crowbar 0.36.0.0

$ModelName "props_map_editor/protruding_ped_middle.mdl"

$BodyGroup "Body"
{
	studio "protruding_ped_middle_reference.smd"
}


$SurfaceProp "metalpanel"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "models/props_map_editor"

$CBox 0 0 0 0 0 0

$BBox -52.074 -12.65 -64.003 0 12.65 6.01


$Sequence "idle" {
	"protruding_ped_middle_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "explodeOut" {
	"protruding_ped_middle_anims\explodeOut.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "explodeIn" {
	"protruding_ped_middle_anims\explodeIn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "push" {
	"protruding_ped_middle_anims\push.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
