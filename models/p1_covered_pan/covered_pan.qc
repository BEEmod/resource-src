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

$collisionjoints "door_phys.smd"  {
	$mass 1000
}

$sequence open {
	"anims/open.smd"
	fps 30
}
