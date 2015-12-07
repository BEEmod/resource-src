// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_p1/fake_light_hole.mdl"

$staticprop

$bodygroup "Body"
{
	studio "glass_lightcover_reference.smd"
}

$cdmaterials "BEE2/models/props_p1/fake_light_hole/"

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

