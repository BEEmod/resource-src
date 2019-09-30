// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_p1/cube_button.mdl"

$BodyGroup "Body"
{
	studio "cube_button_ref.smd"
}

$LOD 25
{
	replacemodel "cube_button_ref.smd" "cube_button_lod1.smd"
}
$LOD 40
{
	replacemodel "cube_button_ref.smd" "cube_button_lod2.smd"
}
$LOD 90
{
	replacemodel "cube_button_ref.smd" "cube_button_lod3.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "models/props/" //"BEE2/models/props_p1/"

$hbox 0 "box_socket_root"	   -41.43    4.00  -41.45    41.42   13.00   41.40
$hbox 0 "box_socket_top"	   -24.58   -1.75  -24.64    24.67    4.75   24.62

$TextureGroup "skinfamilies"
{
	{ "box_socket_active" }
	{ "box_socket_active" }
}

$Sequence "idle" {
	"anim_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "down" {
	"anim_down.smd"
	fps 30
	{ event AE_CL_PLAYSOUND 1 "BEE2.P1.button_down" }
}

$Sequence "up" {
	"anim_up.smd"
	fps 30
	{ event AE_CL_PLAYSOUND 1 "BEE2.P1.button_up" }
}

$Sequence "idledown" {
	"anim_idledown.smd"
	fps 30
}

$CollisionModel "box_socket_physics.smd"
{
	$mass 50
	$concave
}
