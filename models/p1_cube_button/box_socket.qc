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

$TextureGroup "skinfamilies"
{
	{ "box_socket" }
	{ "box_socket" } 
	//_orange" }
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
	{ 
	event AE_CL_PLAYSOUND 1 "BEE2.P1.button_down"
	}
}

$Sequence "up" {
	"anim_up.smd"
	fps 30
	{ 
	event AE_CL_PLAYSOUND 1 "BEE2.P1.button_up" 
	}
}

$Sequence "idledown" {
	"anim_idledown.smd"
	fps 30
}

$CollisionModel "box_socket_physics.smd"
{
	$mass 50
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
