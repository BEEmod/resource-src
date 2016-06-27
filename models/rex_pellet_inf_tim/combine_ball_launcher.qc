// Created by Crowbar 0.34.0.0

$ModelName "BEE2/props_ingame/pellet_launcher_inf.mdl"

$BodyGroup "Body"
{
	studio "combine_ball_launcher_reference.smd"
}

$LOD 20
{
	replacemodel "combine_ball_launcher_reference.smd" "combine_ball_launcher_reference_lod1.smd"
}
$LOD 30
{
	replacemodel "combine_ball_launcher_reference.smd" "combine_ball_launcher_reference_lod2.smd"
}
$LOD 55
{
	replacemodel "combine_ball_launcher_reference.smd" "combine_ball_launcher_reference_lod3.smd"
}

$SurfaceProp "metalpanel"

$Contents "solid"

$renamematerial "combine_ball_launcher" "launcher_inf_clean"

$texturegroup "skinfamilies" {
	{ "launcher_inf_clean" }
	{ "launcher_inf_dirty" }
}

$CDMaterials "BEE2/models/props_ingame/rex/"

$Sequence "idle_closed" {
	"combine_ball_launcher_anims\idle_closed.smd"
	fps 30
}

$Sequence "idle_open" {
	"combine_ball_launcher_anims\idle_open.smd"
	fps 30
}

$Sequence "open" {
	"combine_ball_launcher_anims\open.smd"
	fps 30
}

$Sequence "close" {
	"combine_ball_launcher_anims\close.smd"
	fps 30
}

$CollisionModel "combine_ball_launcher_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
