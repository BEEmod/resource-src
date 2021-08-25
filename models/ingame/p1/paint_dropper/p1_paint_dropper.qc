$modelname "bee2/props_ingame/p1_paint_dropper.mdl"

$staticprop

$mostlyopaque

$bodygroup "body"
{
	studio "p1_paint_dropper_reference.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition 0.093 -0.387 -39.82

$cdmaterials "models\props_ingame\"
$cdmaterials "BEE2\models\props_ingame"
$cdmaterials "models\props"

$texturegroup "skinfamilies"
{
	{ "paint_dropper_new_blue"  }
	{ "clean_dropper_grey" }
	{ "paint_dropper_new_red"   }
	{ "paint_dropper_new_white" }
	{ "paint_dropper_new_water" }
}

$sequence "ref" {
	"anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "p1_paint_dropper_physics.smd"
{
	$mass 17194.35
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 17

}
