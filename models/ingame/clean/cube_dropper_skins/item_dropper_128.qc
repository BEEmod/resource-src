// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_clean/item_dropper_skins.mdl"

$bodygroup "Body"
{
	studio "item_dropper_128_reference.smd"
}

$cdmaterials "models/props_backstage/" "BEE2/models/props_clean/"

$texturegroup "skinfamilies"
{
	{ "item_dropper" }
	{ "item_dropper_orange" }
	{ "item_dropper_white" }
}

$surfaceprop "metalpanel"

$contents "solid"

$sequence "BindPose" "item_dropper_128_anims\BindPose.smd" {
	fps 30
}

$sequence "item_dropper_idle" "item_dropper_128_anims\item_dropper_idle.smd" {
	fps 30
}

$sequence "item_dropper_close" "item_dropper_128_anims\item_dropper_close.smd" {
	fps 30
	{ event AE_CL_PLAYSOUND 0 "World.DropperIrisClose" }
}

$sequence "item_dropper_idle_closed" "item_dropper_128_anims\item_dropper_idle_closed.smd" {
	fps 30
}

$sequence "item_dropper_open" "item_dropper_128_anims\item_dropper_open.smd" {
	fps 30
	{ event AE_CL_PLAYSOUND 0 "World.DropperIrisOpen" }
}

$collisionjoints "item_dropper_128_physics.smd"
{
	$mass 50
	$inertia 1
	$damping 0
	$rotdamping 0
	$concaveperjoint
	$concave


	$jointconstrain "item_aperture_08" x limit 0 0 0
	$jointconstrain "item_aperture_08" y limit 0 0 0
	$jointconstrain "item_aperture_08" z limit 0 0 0

	$jointconstrain "item_aperture_07" x limit 0 0 0
	$jointconstrain "item_aperture_07" y limit 0 0 0
	$jointconstrain "item_aperture_07" z limit 0 0 0

	$jointconstrain "item_aperture_06" x limit 0 0 0
	$jointconstrain "item_aperture_06" y limit 0 0 0
	$jointconstrain "item_aperture_06" z limit 0 0 0

	$jointconstrain "item_aperture_05" x limit 0 0 0
	$jointconstrain "item_aperture_05" y limit 0 0 0
	$jointconstrain "item_aperture_05" z limit 0 0 0

	$jointconstrain "item_aperture_04" x limit 0 0 0
	$jointconstrain "item_aperture_04" y limit 0 0 0
	$jointconstrain "item_aperture_04" z limit 0 0 0

	$jointconstrain "item_aperture_03" x limit 0 0 0
	$jointconstrain "item_aperture_03" y limit 0 0 0
	$jointconstrain "item_aperture_03" z limit 0 0 0

	$jointconstrain "item_aperture_02" x limit 0 0 0
	$jointconstrain "item_aperture_02" y limit 0 0 0
	$jointconstrain "item_aperture_02" z limit 0 0 0

	$jointconstrain "item_aperture_01" x limit 0 0 0
	$jointconstrain "item_aperture_01" y limit 0 0 0
	$jointconstrain "item_aperture_01" z limit 0 0 0

	$jointconstrain "item_aperture_09" x limit 0 0 0
	$jointconstrain "item_aperture_09" y limit 0 0 0
	$jointconstrain "item_aperture_09" z limit 0 0 0
}


$keyvalues
{
	bone_followers 
	{
		"bone" "item_dropper_root"
		"bone" "item_aperture_01"
		"bone" "item_aperture_02"
		"bone" "item_aperture_03"
		"bone" "item_aperture_04"
		"bone" "item_aperture_05"
		"bone" "item_aperture_06"
		"bone" "item_aperture_07"
		"bone" "item_aperture_08"
		"bone" "item_aperture_09"
	}
}
