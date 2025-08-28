$modelname "props/player_button.mdl"

$bodygroup "Body"
{
	studio "player_button_reference.smd"
}

$lod 25
{
	replacemodel "player_button_reference.smd" "player_button_reference_lod1.smd"
	nofacial
}
//$lod 40
//{
//	replacemodel "player_button_reference.smd" "player_button_reference_lod2.smd"
//	nofacial
//}
//$lod 90
//{
//	replacemodel "player_button_reference.smd" "player_button_reference_lod3.smd"
//	nofacial
//}

$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 9.389

$cdmaterials "models\props\"

$texturegroup "skinfamilies"
{
	{ "player_button"        }
	{ "player_button_active" }
}

$sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "down" {
	"anims\down.smd"
	{ event AE_CL_PLAYSOUND 1 "Portal.ButtonDepress" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "up" {
	"anims\up.smd"
	{ event AE_CL_PLAYSOUND 1 "Portal.ButtonRelease" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idledown" {
	"anims\idledown.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionjoints "player_button_physics.smd"
{
	$mass 50
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$concaveperjoint
	$maxconvexpieces 20

}
