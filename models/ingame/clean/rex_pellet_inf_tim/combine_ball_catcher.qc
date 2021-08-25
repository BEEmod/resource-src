// Created by Crowbar 0.34.0.0

$ModelName "BEE2/props_ingame/pellet_catcher_timed.mdl"

$BodyGroup "Body"
{
	studio "combine_ball_catcher_reference.smd"
}

$LOD 20
{
	replacemodel "combine_ball_catcher_reference.smd" "combine_ball_catcher_reference_lod1.smd"
}
$LOD 35
{
	replacemodel "combine_ball_catcher_reference.smd" "combine_ball_catcher_reference_lod2.smd"
}
$LOD 50
{
	replacemodel "combine_ball_catcher_reference.smd" "combine_ball_catcher_reference_lod3.smd"
}

$SurfaceProp "metalpanel" //"combine_metal"

$Contents "solid"

$renamematerial "ball_catcher_sheet" "catcher_timed_clean"

$texturegroup "skinfamilies" {
	{ "catcher_timed_clean" }
	{ "catcher_timed_dirty" }
}

$CDMaterials "BEE2/models/props_ingame/rex/"

$Attachment "ball_attachment" "base" 0 8 0 rotate 0 90 0

$CBox 0 0 0 0 0 0

$BBox -22.568 -45.235 -37.111 49.941 45.044 53.564

$Sequence "idle" {
	"combine_ball_catcher_anims\idle.smd"
	fps 30
}

$Sequence "closed" {
	"combine_ball_catcher_anims\closed.smd"
	fps 30
}

$Sequence "close" {
	"combine_ball_catcher_anims\close.smd"
	fps 30
	{
		event AE_CL_PLAYSOUND 0 "BEE2.pellet_catcher"
	}
}

$Sequence "open" {
	"combine_ball_catcher_anims\open.smd"
	fps 30
	{
		// The pellet being destroyed.
		event AE_CL_PLAYSOUND 0 "NPC_CombineBall.Explosion"
		// Just as the center part starts moving..
		event AE_CL_PLAYSOUND 25 "prop_laser_catcher.poweroff"
	}
}
