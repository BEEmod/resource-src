// Created by Crowbar 0.36.0.0

$ModelName "props_map_editor/under_laserfield.mdl"

$BodyGroup "Body"
{
	studio "under_fizz_reference.smd"
}

$CDMaterials "BEE2/models/props_map_editor/under_fizz/"

$origin 0 0 8

$renamematerial "fizzler" "laserfield"

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
