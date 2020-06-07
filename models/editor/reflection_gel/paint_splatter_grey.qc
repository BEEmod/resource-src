// Created by Crowbar 0.68

$ModelName "props_map_editor/paint_splatter_grey.mdl"

$StaticProp

$BodyGroup "body"
{
	studio "paint_splatter_grey.smd"
}


$SurfaceProp "default"

$Contents "solid"

$IllumPosition 0 0 -30.75

$CDMaterials "BEE2/models/props_map_editor/"

$CBox 0 0 0 0 0 0

$BBox -56.299 -60.3 -61.5 56.299 60.3 0

$DefineBone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$Sequence "idle" {
	"paint_splatter_grey_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
