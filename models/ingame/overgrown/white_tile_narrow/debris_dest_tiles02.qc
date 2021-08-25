$ModelName "BEE2/props_overgrown/dest_tiles_narrow.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "debris_dest_tiles02.smd"
}


$SurfaceProp "default"

$Contents "solid"

$CDMaterials "models\props_destruction\"

$Sequence "idle" {
	"debris_dest_tiles02_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
