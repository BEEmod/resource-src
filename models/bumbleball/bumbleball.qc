// Created by Crowbar 0.36.0.0

$ModelName "models/BEE2/props_ingame/bumbleball_clean.mdl"

$BodyGroup "Body"
{
	studio "bumbleball_reference.smd"
}

$LOD 25
{
	replacemodel "bumbleball_reference.smd" "bumbleball_lod1.smd"
}
$LOD 50
{
	replacemodel "bumbleball_reference.smd" "bumbleball_lod2.smd"
}

$SurfaceProp "sphere2"

$Contents "grate"

$renamematerial "bumbleball01" "clean_off"

$CDMaterials "BEE2/models/props_ingame/bumbleball/"

$TextureGroup "skinfamilies"
{
	{ "clean_off" }
	{ "clean_on" }
	{ "clean_bounce" }
	{ "clean_speed" }
}

$CBox 0 0 0 0 0 0

$BBox -24 -24 -24 24 24 24


$Sequence "idle" {
	"bumbleball_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$CollisionModel "bumbleball_physics.smd"
{
	$mass 75
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}

$KeyValues
{
	prop_data 
	{
		base "Metal.large"
		blockLOS 0 // Don't block!!
		"author" "Erik Zeug"
	}
}
