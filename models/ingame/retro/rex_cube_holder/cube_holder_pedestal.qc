$modelname "BEE2/props_underground/rex/cube_holder_pedestal"
$staticprop
$casttextureshadows
$origin 0 0 0 -90
$model mesh "cube_holder_pedestal_ref.smd"
$surfaceprop "metal"
$CDMaterials "bee2/models/props_underground/rex_cube_holder/"
$collisionmodel "cube_holder_pedestal_phys.smd"
{
	$automass
	$concave
	$remove2d
	$maxconvexpieces 1000000
}
$sequence ref "cube_holder_pedestal_ref.smd"
