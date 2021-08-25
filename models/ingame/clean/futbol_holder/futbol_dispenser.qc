// Created by Crowbar 0.34.0.0
$staticprop // It doesn't animate, so allow it to be prop_static!

$ModelName "BEE2/props_ingame/futbol_dispenser.mdl"

$BodyGroup "Body"
{
	studio "futbol_dispenser_reference.smd"
}

$texturegroup "skinfamilies"
{
	{ "futbol_dispenser" }
	{ "futbol_dispenser_p2" }
	{ "futbol_dispenser_dirty" }
}

$LOD 25
{
	replacemodel "futbol_dispenser_reference.smd" "futbol_dispenser_reference_lod1.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$origin 0 -32 0 // Don't have the origin right up against the wall

$CDMaterials "models\props\" "BEE2/models/props_ingame/"

$CBox 0 0 0 0 0 0

$Sequence "idle" { "futbol_dispenser_reference"
	fps 30
}

$CollisionModel "futbol_dispenser_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave
}
