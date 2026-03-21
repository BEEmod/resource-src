$modelname "BEE2/props_clean/Light_rail_wall_emitter.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Light_rail_wall_emitter_reference.smd"
}


$surfaceprop "metal"

$contents "solid"

// Overgrown material appears to be missing?
//$texturegroup "skinfamilies" {
//	{ "light_rail_wall_emitter" }
//	{ "light_rail_wall_emitter_dirty" }
//}

$cdmaterials "BEE2/models/props_clean/"
//$cdmaterials "BEE2/models/props_overgrown/"

$sequence "idle" "anims\idle.smd"

$collisionmodel "light_rail_wall_emitter_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
