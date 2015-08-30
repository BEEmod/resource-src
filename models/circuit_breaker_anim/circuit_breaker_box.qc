// Created by Crowbar 0.19.0.0

$modelname "props_gameplay/circuit_breaker_box.mdl"

$staticprop

$bodygroup "default"
{
	studio "circuit_breaker_box_reference.smd"
}


// Model uses material "models\props_gameplay\power_lever.vmt"

$surfaceprop "default"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 6.68 -5.043 1.961

// $bbox -0.25 -8.229 -12.254 10.434 21.579 16.255

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -0.000001 -8.002452 -12.186223 10.085325 21.361828 16.108097




$sequence "BindPose" "circuit_breaker_box_anims\BindPose.smd" {
	fps 30
}

$collisionmodel "circuit_breaker_box_physics.smd"
{
	$mass 59.11252
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

$collisiontext
{
	collisionText 
	{
	}
}

