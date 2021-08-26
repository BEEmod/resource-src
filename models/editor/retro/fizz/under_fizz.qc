// Created by Crowbar 0.36.0.0

$ModelName "props_map_editor/under_fizz.mdl"

$BodyGroup "Body"
{
	studio "under_fizz_reference.smd"
}

$CDMaterials "BEE2/models/props_map_editor/under_fizz/"

$origin 0 0 8

// Bones:
// 
// time 0
// 0  0.000000 0.000000 0.000000  -1.570798 2.955648 -1.570799
// 1  0.243000 -43.833000 0.000000  -0.000000 -0.000000 -0.000020
// 2  -39.631035 -15.457637 -0.000007  3.141592 -0.000000 0.371860
// 3  0.000000 0.000000 7.620000  -0.000000 3.141593 0.185945
// 4  0.000000 0.000000 -7.620000  -0.000000 3.141593 0.185945
// 5  7.620000 1.409000 0.000000  0.000000 3.141593 0.185944
// 6  -7.620000 -1.409000 0.000000  0.000000 3.141593 0.185944

$Sequence "idle" {
	"under_fizz_anim_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "explodeout" {
	"under_fizz_anim_explodeout.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "explodein" {
	"under_fizz_anim_explodein.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}
