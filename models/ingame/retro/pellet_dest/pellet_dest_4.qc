$modelname "BEE2/props_underground/pellet_dest_4"

$staticprop

$body "Body" "pellet_dest_4_ref"

$cdmaterials "BEE2/models/props_underground/" "models/anim_wp/framework"

$sequence idle "pellet_dest_4_ref"

$surfaceprop "solidmetal"

$collisionmodel "pellet_dest_4_phys"  {
	$maxconvexpieces 9
	$mass 1000
	$concave
}
