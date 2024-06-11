$modelname "BEE2/catwalk/hanging_walkway_128_endcap.mdl"

$staticprop

$bodygroup "Body"
{
	studio "catwalk_end_wall_ref.smd"
}

$texturegroup "skinfamilies"
{
	{ "railing_bts" }
	{ "catwalk_rusty" }
}

$cdmaterials "models/props_bts/" "BEE2/models/props_overgrown/"

$surfaceprop "metalgrate"

$contents "grate"


$sequence "idle" {
	"catwalk_end_wall_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "catwalk_end_wall_phys.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4
}
