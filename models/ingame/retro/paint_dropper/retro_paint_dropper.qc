$modelname "bee2/props_ingame/retro_paint_dropper.mdl"

$staticprop

$bodygroup "Body"
{
	studio "retro_paint_dropper_reference.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition 0 0 -40

$cdmaterials "models\props_underground"
$cdmaterials "BEE2\models\props_ingame"

$texturegroup "skinfamilies"
{
	{ "underground_paintdropper_blue"    }
	{ "under_dropper_grey"        		 }
	{ "underground_paintdropper_red"     }
	{ "underground_paintdropper"         }
	{ "underground_paintdropper_nopaint" }
}


$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "retro_paint_dropper_physics.smd"
{
	$mass 22055.06
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 16
}