$modelname "BEE2/props_clean/scaffold_wall_emitter.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Light_rail_wall_emitter_reference.smd"
}

$surfaceprop "metal"

$contents "solid"

$texturegroup "skinfamilies" {
	{ "light_rail_wall_emitter" }
	{ "rail_wall_emitter_over" }
}

$cdmaterials "BEE2/models/props_clean/"
$cdmaterials "BEE2/models/props_overgrown/scaffold/"

$origin 0 0 1.16582

$sequence "idle" {
	"wall_emitter_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "light_rail_wall_emitter_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
}
