// The high-vertex part of P1 angled panels - the white cylinder and clamp.
// Do that in a model to make it have better detail.

// This is a double set, with embedded rotations.
$modelname "BEE2/props_p1/panel_cylinder_rot.mdl"

$BodyGroup "Body"
{
	studio "panel_cylinder_anim_ref.smd"
}

//$lod 30
//{
//	replacemodel "panel_cylinder_anim_ref.smd" "panel_cylinder_lod1.smd"
//}

$cdmaterials "BEE2/models/props_p1/"

$surfaceprop "plastic_box"

// The cylinder doesn't change bounds, so no moving collision is needed.
$hboxset "default"
$hbox 0 "root"	-16 -14 -16		16 42 16

$attachment "cyl" "rotate" 0 0 14

$collisionmodel "panel_cylinder_anim_phys"  {
	$mass 50
}

$sequence idle {
	"anims/idle"
	fps 30
}

$sequence "ccw_90" {
	"anims/ccw_90"
	fps 30
}

$sequence "cw_90" {
	"anims/cw_90"
	fps 30
}

$sequence "ccw_45" {
	"anims/ccw_45"
	fps 30
}

$sequence "cw_45" {
	"anims/cw_45"
	fps 30
}
