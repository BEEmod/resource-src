$modelname "props_map_editor/BEE2/p1/paint_dropper_bounce.mdl"

$mostlyopaque

$bodygroup "body"
{
	studio "p1_paint_dropper_editor_reference.smd"
}

$surfaceprop "default"

$contents "solid"

$cdmaterials "models\props_ingame\"
$cdmaterials "BEE2\models\props_ingame"
$cdmaterials "models\props"

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