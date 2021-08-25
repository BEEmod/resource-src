// This fixes some missing faces in droppers, and adds supports for the roof clamps on pillars.
// It also has collision for the animated part, so that can be non-solid..

$staticprop

$modelname "BEE2/props_underground/dropper_fix"

$body "Body" "dropper_pillar_ref"

$cdmaterials "models/props_underground"

$sequence idle "dropper_pillar_ref"

$surfaceprop "wood"

$collisionmodel "dropper_pillar_phys"  {
	$concave
	$maxconvexpieces 4
	$automass
}
