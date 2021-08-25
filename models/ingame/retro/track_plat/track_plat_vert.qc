$modelname "BEE2/props_underground/track_plat_vert"

$body "Body" "track_plat_vert"

$cdmaterials "BEE2/models/props_underground"
$cdmaterials "models/props_underground" // For motor

$sequence idle "track_plat_vert"

// Illuminate from the platform surface, so that's most correct.
// We don't care as much about the motors etc.
$illumposition -30 0 0

$sequence rotate "anim_vert" {
	// 36 frames.
	// 26 units wide.
	// Need to move at a rate of 100 units/second.
	// frames = 100/(pi*26) * 36
	fps 44.073677
}

$surfaceprop "metal"
