$modelname "BEE2/props_underground/tv_screen_frame"

$staticprop

$body "Body" "frame_ref"

$cdmaterials "BEE2/models/props_underground"

$sequence idle "frame_ref"

$surfaceprop "wood"

$collisionmodel "frame_ref"  {
	// $concave
	// $maxconvexpieces 4
	$automass
}
