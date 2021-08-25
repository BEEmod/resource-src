// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_bts/cold_light_cage.mdl"

$StaticProp

$BodyGroup "body"
{
	studio "light_cage001a_reference.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "BEE2/models/props_bts/" "models\props_bts\"

$renamematerial "light_cage001" "light_cage_cold"

$TextureGroup "skinfamilies"
{
	{ "light_cage_cold"   }
	{ "light_cage001_off" }
}

$CBox 0 0 0 0 0 0

$BBox -6.002 -64.615 -16.264 8.668 64.615 16.264


$Sequence "ref" {
	"anim_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "light_cage001a_physics.smd"
{
	$mass 42.53022
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
}
