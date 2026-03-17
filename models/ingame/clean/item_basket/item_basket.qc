$modelname "BEE2/props_clean/item_basket.mdl"

$bodygroup "default"
{
	studio "item_basket_reference.smd"
}

$surfaceprop "default"

$contents "solid"

$cdmaterials "models\props_underground"
$cdmaterials "BEE2\models\props_clean\item_basket"

$sequence "BindPose" "anims\BindPose.smd"

$sequence "up" {
	"anims\release.smd"
	{ event AE_CL_PLAYSOUND 0 "Portal.OGButtonRelease" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "idleup" {
	"anims\release_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "idledown" {
	"anims\press_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "down" {
	"anims\press.smd"
	{ event AE_CL_PLAYSOUND 0 "Portal.OGButtonDepress" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$collisionjoints "item_basket_physics.smd"
{
	$mass 7742.671
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone "root"
	$concaveperjoint
	$maxconvexpieces 10


	$jointconstrain "top" x limit 0 0 0
	$jointconstrain "top" y limit 0 0 0
	$jointconstrain "top" z limit 0 0 0
}

$collisiontext
{
	collisionText 
	{
	}
}

$keyvalues
{
}
