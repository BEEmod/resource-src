// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/p1_light.mdl"

$staticprop

$bodygroup "Body"
{
	studio "glass_lightcover_reference.smd"
}

$cdmaterials "BEE2/models/props_ingame/p1_light/"

$texturegroup "skinfamilies"
{
	{
		"white"
	}
	{
		"orange"
	}
}

$surfaceprop "metal"

$contents "solid"

$sequence "idle" "glass_lightcover_anims\idle.smd" {
	fps 30
}

$collisionmodel "glass_lightcover_physics.smd"
{
	$mass 184.7674
	$inertia 1
	$damping 0
	$rotdamping 0

}

