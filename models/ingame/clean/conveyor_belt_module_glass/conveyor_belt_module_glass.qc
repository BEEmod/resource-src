$modelname "BEE2/props_clean/conveyor_belt_module_glass.mdl"

$staticprop

$bodygroup "default"
{
	studio "conveyor_belt_module_glass_reference.smd"
}

$surfaceprop "default"

$contents "solid"

$cdmaterials "models\anim_wp\circle_shield"
$cdmaterials "BEE2\models\anim_wp\circle_shield"

$texturegroup "skinfamilies"
{
	{ "circle_shield_main" }
	{ "circle_shield_main_off" }
}

$sequence "BindPose" {
	"BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "conveyor_belt_module_glass_physics.smd"
{
	$mass 351.9778
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}