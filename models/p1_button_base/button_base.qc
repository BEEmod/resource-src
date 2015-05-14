// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/p1_button_base.mdl"

$staticprop

$bodygroup "Body"
{
	studio "button_base_reference.smd"
}

$lod 20
{
	replacemodel "button_base_reference.smd" "button_base_lod1.smd"
}
$lod 30
{
	replacemodel "button_base_reference.smd" "button_base_lod2.smd"
}
$lod 50
{
	replacemodel "button_base_reference.smd" "button_base_lod3.smd"
}

$cdmaterials "BEE2/models/props_ingame/"

$texturegroup "skinfamilies"
{
	{
		"p1_button.vmt"
	}
	{
		"p1_button.vmt"
	}
}

$surfaceprop "metal"

$contents "solid"

 $bbox -64 -64 0 64 64 16


$sequence "idle" "button_base_reference.smd" {
	fps 30
}

$collisionmodel "button_base_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

