// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/dropper_grey_retro.mdl"

$staticprop

$bodygroup "default"
{
	studio "underground_paintdropper_reference.smd"
}

$lod 50
{
	replacemodel "underground_paintdropper_reference.smd" "underground_paintdropper_model_lod1.smd"
}

$cdmaterials	"BEE2\models\props_ingame\"

$surfaceprop "metal"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 -9.543 44.469

 $bbox -72 -72 0 72 72 88

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -72 -85.228394 0 91.086113 85.228394 88.937622




$sequence "BindPose" "BindPose.smd" {
	fps 30
}

$collisionmodel "underground_paintdropper_physics.smd"
{
	$mass 22055.06
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

$collisiontext
{
	collisionText 
	{
	}
}

