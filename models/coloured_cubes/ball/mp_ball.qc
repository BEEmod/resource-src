// Created by Crowbar 0.34.0.0

$ModelName "BEE2/cube_color/clean_sphere.mdl"

$BodyGroup "default"
{
	studio "mp_ball_reference.smd"
}


$SurfaceProp "sphere2"

$Contents "solid"

$cdmaterials "BEE2/models/cube_color/clean_ball" "BEE2/models/cube_color/"

$TextureGroup "skinfamilies"
{
	{ "ball_off"    }
	{ "ball_on"     }
	{ "ball_bounce" }
	{ "ball_speed"  }
}

$CBox 0 0 0 0 0 0

$BBox -20.25 -20.25 -20.25 20.25 20.25 20.25


$Sequence "ref" {
	"anim_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "mp_ball_physics.smd"
{
	$mass 75
}

$KeyValues
{
	prop_data 
	{
		"base" "Metal.large"
	}
}
