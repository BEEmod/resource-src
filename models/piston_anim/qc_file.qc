$modelname "BEE2/ingame/piston_plat_anim.mdl"

$bodygroup "default"
{
	studio "piston_anim_ref.smd"
}

$cdmaterials "models/anim_wp/framework/"


$surfaceprop "no_decal"

$contents "not"

$bbox -8 -8 -8 8 8 8

$attachment "piston_1" "piston_1" 0 0 0
$attachment "piston_2" "piston_2" 0 0 0
$attachment "piston_3" "piston_3" 0 0 0
$attachment "piston_4" "piston_4" 0 0 0
 
$collisionjoints "physics_mesh"  {
	$mass 1000
}

$sequence "AttachPose" "piston_anim_ref.smd" {
	fps 1
}