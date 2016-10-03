// Created by Crowbar 0.34.0.0

$ModelName "BEE2/props_overgrown/rusty_ball.mdl"

$BodyGroup "default"
{
	studio "mp_ball_reference.smd"
}


$SurfaceProp "sphere2"

$Contents "solid"

$CDMaterials "BEE2/models/props_overgrown/rusty_ball/"

$TextureGroup "skinfamilies"
{
	{ "rusty_ball_off"    }
	{ "rusty_ball_on"     }
	{ "rusty_ball_bounce" }
	{ "rusty_ball_speed"  }
}

$CBox 0 0 0 0 0 0

$BBox -20.25 -20.25 -20.25 20.25 20.25 20.25


$Sequence "ref" {
	"mp_ball_anims\ref.smd"
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
