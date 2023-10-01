// Created by Crowbar 0.74

$modelname "props/pedestal_Base_reference.mdl"

$bodygroup "Body"
{
	studio "pedestal_Base_reference.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 -21.226

$cdmaterials "models\props\"

$cbox 0 0 0 0 0 0

$bbox -40 -23.796 -47.951 40 23.796 5.744

$definebone "Scene_Root" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "root" "Scene_Root" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "bone_open_01" "Scene_Root" 0 0 40 0 0 0 0 0 0 0 0 0
$definebone "bone_open_02" "Scene_Root" 0 0 -40 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"pedestal_base_reference_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "close" {
	"pedestal_base_reference_anims\close.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "pedestal_base_reference_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
