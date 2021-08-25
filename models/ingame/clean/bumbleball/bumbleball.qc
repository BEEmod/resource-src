// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_clean/bumbleball_clean.mdl"

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

$Contents "solid"

$CDMaterials "BEE2/models/props_clean/bumbleball/"

$TextureGroup "skinfamilies"
{
	{
		"body"
		"light_off"
	}
	{
		"body"
		"light_on"
	}
	{
		"body_bounce"
		"light_bounce"
	}
	{
		"body_speed"
		"light_speed"
	}
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
