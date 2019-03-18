// Created by Crowbar 0.55

$ModelName "props_map_editor/antlaser.mdl"

$BodyGroup "Body"
{
	studio "antlaser_ref.smd"
}


$SurfaceProp "metalpanel"

$Contents "solid"

$IllumPosition 0.001 31.999 -32

$CDMaterials "models\props_map_editor"
$CDMaterials ""

$CBox 0 0 0 0 0 0

$Sequence "idle" {
	"laseremit_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "explodeOut" {
	"laseremit_anims\explodeOut.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "explodeIn" {
	"laseremit_anims\explodeIn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
