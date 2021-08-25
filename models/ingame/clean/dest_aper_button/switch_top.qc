// Created by Crowbar 0.36.0.0

$ModelName "dest_ap/port_button_top.mdl"

$BodyGroup "Body"
{
	studio "switch_top_ref.smd"
}

$LOD 15
{
	replacemodel "switch_top_ref.smd" "switch_top_lod1.smd"
}
$LOD 35
{
	replacemodel "switch_top_ref.smd" "switch_top_lod2.smd"
}

$SurfaceProp "metal_box"

$Contents "solid"

$CDMaterials "models\props\"
$TextureGroup "skinfamilies"
{
	{ "switch_skin002" }
	{ "switch" }
}

$Sequence "idle" {
	"switch001_anims\idle.smd"
	fps 30
}

$Sequence "down" {
	"switch001_anims\down.smd"
	fps 30
	{ event AE_CL_PLAYSOUND 0 "Portal.button_down" }
}

$Sequence "up" {
	"switch001_anims\up.smd"
	fps 30
	{ event AE_CL_PLAYSOUND 0 "Portal.button_up" }
}

$Sequence "idle_down" {
	"switch001_anims\idle_down.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
