// Created by Crowbar 0.34.0.0

$ModelName "BEE2/props_clean/faith_plate_rotating.mdl"

$BodyGroup "Body"
{
	studio "faith_plate_rotating_ref.smd"
}

$MostlyOpaque

$texturegroup "skinfamilies"
{
	{
		"faith_plate"
		"faith_plate_glass"
		"black_wall_metal_002b_vertex"
		"squarebeams"
	}
	{
		"faith_plate_error"
		"faith_plate_glass"
		"black_wall_metal_002b_vertex"
		"squarebeams"
	}
	{
		"faith_plate_rusty"
		"faith_plate_rusty_glass"
		"black_wall_metal_005b_vertex"
		"squarebeams_skin2"
	}
	{
		"faith_plate_rusty_error"
		"faith_plate_rusty_glass"
		"black_wall_metal_005b_vertex"
		"squarebeams_skin2"
	}
}

$cdmaterials "models/props/" "models/anim_wp/framework/" "BEE2/models/props_ingame/" "metal/"

$SurfaceProp "glass"

$origin 0 0 8

$attachment "light" "faith_pate_paddle_alter_direction" 22 1 1 rotate 270 180 0

$hbox 0 "faith_pate_paddle_alter_direction_geom"	    -5.98  -14.88  -49.28    20.19   17.55   33.59
$hbox 0 "pendulum_lock_rotate_geom"	   -19.11  -10.94   -9.89    27.11   29.87   12.56
$hbox 0 "box_geom"	   -60.00  -53.37  -64.00    60.00    0.00   64.00


$Sequence "idle" {
	"faith_plate_mapeditor_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "angled" {
	"faith_plate_mapeditor_anims\angled.smd"
	{
		event AE_CL_PLAYSOUND 0 "World.CatapultLaunch"
	}
}

$Sequence "straightup" {
	"faith_plate_mapeditor_anims\straightup.smd"
	{
		event AE_CL_PLAYSOUND 0 "World.CatapultLaunch"
	}
}

$collisionmodel "faith_plate_rotating_physics.smd" {
	$mass 1000
}
