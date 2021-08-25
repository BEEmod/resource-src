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
$sequence "0-1" "anims/anim_0_1.smd" {
    fps 37
}

$sequence "0-2" "anims/anim_0_2.smd" {
    fps 37
}

$sequence "0-3" "anims/anim_0_3.smd" {
    fps 37
}

$sequence "0-4" "anims/anim_0_4.smd" {
    fps 37
}

$sequence "1-2" "anims/anim_1_2.smd" {
    fps 37
}

$sequence "1-3" "anims/anim_1_3.smd" {
    fps 37
}

$sequence "1-4" "anims/anim_1_4.smd" {
    fps 37
}

$sequence "2-3" "anims/anim_2_3.smd" {
    fps 37
}

$sequence "2-4" "anims/anim_2_4.smd" {
    fps 37
}

$sequence "3-4" "anims/anim_3_4.smd" {
    fps 37
}

