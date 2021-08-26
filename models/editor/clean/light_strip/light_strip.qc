// Created by Crowbar 0.55

$ModelName "props_map_editor/light_strip.mdl"

$StaticProp

$BodyGroup "body"
{
	studio "light_strip.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$IllumPosition 0.03 0.437 -31.948

$CDMaterials "models\props_map_editor"

$CBox 0 0 0 0 0 0

$BBox -12 -64 -64 12 64 0

$Sequence "ref" {
	"light_strip_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
