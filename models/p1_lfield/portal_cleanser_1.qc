// Created by Crowbar 0.19.0.0

$modelname "props_ingame/p1_lfield.mdl"

$staticprop

$bodygroup "Body"
{
	studio "portal_cleanser_1_reference.smd"
}

$lod 40
{
	replacemodel "portal_cleanser_1_reference.smd" "portal_cleanser_1_reference_lod1.smd"
}

$cdmaterials "models\props_ingame\"

// Model uses material "portal_cleanser.vmt"

$surfaceprop "metal"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0.287 0 0.006

// $bbox -11.923 -10.098 -64.818 11.923 10.578 64.83

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -11.923275 -9.976409 -64.817932 11.923275 10.550143 64.829712




$sequence "idle" "portal_cleanser_1_anims\idle.smd" {
	fps 30
}

$collisionmodel "portal_cleanser_1_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

