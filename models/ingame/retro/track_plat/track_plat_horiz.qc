$modelname "BEE2/props_underground/track_plat_horiz"

$body "Body" "track_plat_horiz"

$cdmaterials "BEE2/models/props_underground"
$cdmaterials "models/props_underground" // For motor

$sequence idle "track_plat_horiz"

// Illuminate from the platform surface, so that's most correct.
// We don't care as much about the motors etc.
$illumposition -30 0 0

$surfaceprop "metal"

// Force only a hitbox on the root bone, the wheels don't change collision...
$hboxset "default"
$hbox 0 "root"	   -34.00  -64.00  -66.00    84.00   64.00   66.00

$sequence rotate "anim_horiz" {
	// 36 frames.
	// 26 units wide.
	// Need to move at a rate of 100 units/second.
	// frames = 100/(pi*26) * 36
	fps 44.073677
}

// $collisionmodel "track_plat_horiz_phys"  {
// 	$concave
// 	$maxconvexpieces 2
// 	$automass
// }
