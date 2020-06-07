$modelname "bee2/props_underground/futbol_dispenser_retro.mdl"

$staticprop

$origin 0 -32 0

$bodygroup "Body"
{
	studio "futbol_dispenser_retro_reference.smd"
}

$LOD 50
{
	replacemodel "futbol_dispenser_retro_reference.smd" "futbol_dispenser_retro_reference_lod1.smd"
}

$surfaceprop "metal"

$contents "solid"

$cdmaterials "models/props"
$cdmaterials "models/props_underground"
$cdmaterials "br_debris"


$sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "futbol_dispenser_retro_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 13
}
