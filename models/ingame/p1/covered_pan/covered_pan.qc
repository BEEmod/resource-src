$modelname "BEE2/props_p1/covered_pan_top.mdl"

$BodyGroup "Body"
{
	studio "door_ref.smd"
}

// $lod 30
// {
	// replacemodel "door_ref.smd" "panel_cylinder_lod1.smd"
// }

$cdmaterials "BEE2/models/props_p1/"
$cdmaterials "BEE2/models/props_clean/"
$sequence idle "door_ref"

$surfaceprop "glass"
$jointsurfaceprop t_slide "metal"
$jointsurfaceprop b_slide "metal"
$jointsurfaceprop pist "metal"
$jointsurfaceprop l_rot "glass"
$jointsurfaceprop r_rot "glass"

// Disable hitboxes on stuff that's covered by other parts.
// $hboxset "default"
$hbox 0 "b_slide"   -64    4  -3.5   64   7.5    -0.5
$hbox 0 "t_slide"   -64    4  -3.5   64   7.5    -0.5
$hbox 0 "l_rot"     -60  -16  -32    60   32      32
$hbox 0 "r_rot"     -60  -16  -32    60   32      32

$collisionjoints "door_phys.smd"  {
	$mass 1000
}

$sequence open {
	"anims/open.smd"
	fps 30
}
