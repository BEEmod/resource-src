// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/crusher_head.mdl"

$staticprop

$bodygroup "default"
{
	studio "crusher_end_reference.smd"
}

$lod 40
{
	replacemodel "crusher_end_reference.smd" "crusher_end_model_lod1.smd"
}
$lod 80
{
	replacemodel "crusher_end_reference.smd" "crusher_end_model_lod2.smd"
}

// Add dirty skin, for overgrown etc.
$texturegroup "skinfamilies"
{
	{
		"crusher"
	}
	{
		"crusher_rusty"
	}
}

$cdmaterials "models/anim_wp/crusher" "BEE2/models/props_ingame/"

// Model uses material "models\anim_wp\crusher\crusher.vmt"

$surfaceprop "default"

$contents "solid"

$bbox -32 -96 -96 32 96 96

// Set the origin to the actual center of the plate...
$origin 0 -100 -141

$sequence "BindPose" "crusher_end_idle.smd" {
	fps 30
}

