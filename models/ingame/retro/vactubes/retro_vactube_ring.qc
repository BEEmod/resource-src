$definevariable baseFile "retro_vactube_ring"

$modelname bee2/props_retro/vactubes/$baseFile$.mdl

$staticprop

$bodygroup "default"
{
	studio $baseFile$_reference.smd
}

$surfaceprop "default"

$contents "solid"

$cdmaterials "bee2/models/props_retro/vactubes/"

$sequence "BindPose" {
	"anims\BindPose.smd"
}

$collisionmodel $baseFile$_physics.smd
{
	$mass 10000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 33
}
