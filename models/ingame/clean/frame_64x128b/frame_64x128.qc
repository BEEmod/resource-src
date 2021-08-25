$modelname "bee2/props_test_chamber/frame_64x128b.mdl"

$staticprop

$bodygroup "Body"
{
	studio "frame_64x128.smd"
}

$surfaceprop "metal"

$contents "solid"

$cdmaterials "models\props_lab\"

$sequence "idle" {
	"frame_64x128_anims\idle.smd"
}

$collisionmodel "frame_64x128_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 5

}
