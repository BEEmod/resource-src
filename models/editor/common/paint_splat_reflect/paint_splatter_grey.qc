
$ModelName "props_map_editor/paint_splatter_grey.mdl"

$StaticProp

$BodyGroup "body"
{
	studio "paint_splatter.smd"
}
$renamematerial "paint_dropper" "paint_dropper_reflection"

$SurfaceProp "default"

$Contents "solid"

$CDMaterials "BEE2/models/props_map_editor/"

$Sequence "ref" {
	"paint_splatter_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
