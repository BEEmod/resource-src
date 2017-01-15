// August's original Aperture Tag gel fizzler model.

$ModelName "props_map_editor/gfizzler_off.mdl"

$BodyGroup "Body"
{
	studio "gfizzler_off_reference.smd"
}


$SurfaceProp "metal"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "models\props_map_editor"
$CDMaterials "models\props_map_editor"
$CDMaterials "models\props_map_editor"
$CDMaterials ""
$CDMaterials ""

$CBox 0 0 0 0 0 0

$BBox -16 -64 -64 16 64 64

// $HBoxSet "default"


$Sequence "idle" {
	"gfizzler_off_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "explodeout" {
	"gfizzler_off_anim_@explodeout.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "explodein" {
	"gfizzler_off_anim_@explodein.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}
