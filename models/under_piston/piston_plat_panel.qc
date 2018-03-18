$staticprop
$modelname "BEE2/props_underground/piston_plat_panel"
$body "Body" "piston_plat_panel_ref"
$cdmaterials "models/props_gameplay/" "BEE2/models/props_underground/"
$sequence idle "piston_plat_ref"
$surfaceprop "metalgrate"
$illumposition 0 0 -2 // Top of platform
$collisionmodel "piston_plat_panel_phys"  {
	$concave
	$maxconvexpieces 2
	$automass
}
