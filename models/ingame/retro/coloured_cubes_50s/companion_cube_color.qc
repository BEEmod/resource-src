// Created by Crowbar 0.36.0.0

$ModelName "BEE2/cube_color/retro_companion.mdl"

$BodyGroup "default"
{
	studio "underground_weighted_cube_reference.smd"
}


$SurfaceProp "Underground_Cube"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "BEE2/models/cube_color/retro/"

$renamematerial "color_retro_standard" "companion"

$TextureGroup "skinfamilies"
{
	{ "companion" }
	{ "companion_bounce" }
	{ "companion_speed" }
}

$CBox 0 0 0 0 0 0

$BBox -18.095 -18.22 -17.823 18.05 17.925 17.823


$Sequence "ref" {
	"anim_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionJoints "underground_weighted_cube_physics.smd"
{
	$mass 40
	$inertia 1
	$damping 0.1
	$rotdamping 0
	$rootbone " "

}

$KeyValues
{
	prop_data 
	{
		"base" "Metal.small"
	}
}
