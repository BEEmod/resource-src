$modelname "BEE2/props_clean/scaffold_corner.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Light_rail_corner_reference.smd"
}

$lod 25
{
	replacemodel "Light_rail_corner_reference.smd" "Light_rail_corner_reference_lod1.smd"
}
$lod 50
{
	replacemodel "Light_rail_corner_reference.smd" "Light_rail_corner_reference_lod2.smd"
}

$surfaceprop "metal"

$contents "solid"

$maxeyedeflection 90

$texturegroup "skinfamilies" {
	{ "light_rail_corner" }
	{ "rail_corner_over" }
}

$cdmaterials "BEE2/models/props_clean/"
$cdmaterials "BEE2/models/props_overgrown/scaffold/"


$sequence "idle" {
	"rail_corner_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

//$collisionmodel "light_rail_corner_physics.smd"
$collisionmodel "corner_phy.smd"
{
	$mass 80
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
}
