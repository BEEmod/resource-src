// Created by Crowbar 0.55

$ModelName "props_map_editor/light_strip_cold.mdl"

$StaticProp

$BodyGroup "body"
{
	studio "light_strip_cold_ref.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$IllumPosition 0 0 -32

$CDMaterials "BEE2/models/props_map_editor/"

$CBox 0 0 0 0 0 0

$BBox -12 -64 -64 12 64 0

$Sequence "ref" {
	"light_strip_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
