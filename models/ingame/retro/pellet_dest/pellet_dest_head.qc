$modelname "BEE2/props_underground/pellet_dest_head"

$staticprop

$body "Body" "pellet_dest_head_ref"

$cdmaterials "BEE2/models/props_underground/" "models/anim_wp/framework"

$sequence idle "pellet_dest_head_ref"

$surfaceprop "solidmetal"

$collisionmodel "pellet_dest_head_phys"  {
	$maxconvexpieces 4
	$mass 1000
	$concave
}
