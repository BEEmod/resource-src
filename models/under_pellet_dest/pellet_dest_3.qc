$modelname "BEE2/props_underground/pellet_dest_3"

$staticprop

$body "Body" "pellet_dest_3_ref"

$cdmaterials "BEE2/models/props_underground/" "models/anim_wp/framework"

$sequence idle "pellet_dest_3_ref"

$surfaceprop "solidmetal"

$collisionmodel "pellet_dest_3_phys"  {
	$maxconvexpieces 4
	$mass 1000
	$concave
}
