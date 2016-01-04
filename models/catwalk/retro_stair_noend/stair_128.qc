// Created by Crowbar 0.19.0.0

$modelname "BEE2/catwalk/retro_stair_128_extended.mdl"

$staticprop

$bodygroup "Body"
{
	studio "stair_128_reference.smd"
}


$cdmaterials "models\props_underground\"

// Model uses material "railing_underground.vmt"

$surfaceprop "metalgrate"

$contents "grate"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 0 22.375

// $bbox -42 -128.25 -72.25 42 128.25 117.75

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -42.000004 -128 -72 42.000004 128 116.75




$sequence "idle" "stair_128_anims\idle.smd" {
	fps 30
}

$collisionmodel "stair_128_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

