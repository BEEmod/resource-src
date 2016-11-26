$modelname "BEE2/props_underground/track_plat_horiz"

$body "Body" "track_plat_horiz"

$cdmaterials "BEE2/models/props_underground"
$cdmaterials "models/props_underground" // For motor

$sequence idle "track_plat_horiz"

// Illuminate from the platform surface, so that's most correct.
// We don't care as much about the motors etc.
$illumposition -30 0 0

$surfaceprop "metal"

$collisionmodel "track_plat_horiz_phys"  {
	$concave
	$maxconvexpieces 2
	$automass
}
