// Created by Crowbar 0.34.0.0

$ModelName "BEE2/props_overgrown/wrecked_dropper_128.mdl"

$scale 0.8 // 130 / 180

$BodyGroup "default"
{
	studio "item_dropper_wrecked_reference.smd"
}

$LOD 40
{
	replacemodel "item_dropper_wrecked_reference.smd" "item_dropper_wrecked_model_lod1.smd"
}
$LOD 80
{
	replacemodel "item_dropper_wrecked_reference.smd" "item_dropper_wrecked_model_lod2.smd"
}
$LOD 120
{
	replacemodel "item_dropper_wrecked_reference.smd" "item_dropper_wrecked_model_lod3.smd"
}

$SurfaceProp "default"

$Contents "solid"

$MostlyOpaque

$CDMaterials "models/props_backstage/" "models/props_basement/" "bee2/models/props_overgrown/"

$TextureGroup "skinfamilies"
{
	{ "item_dropper_wrecked"        }
	{ "item_dropper_wrecked_orange" }
	{ "item_dropper_wrecked_white"  } // Substance graph in ingame/clean/item_dropper_skins/
}

$CBox 0 0 0 0 0 0

$BBox -77.659 -77.659 -87.085 77.659 70.743 87.957


$Sequence "BindPose" {
	"item_dropper_wrecked_anims\BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "item_dropper_idle" {
	"item_dropper_wrecked_anims\item_dropper_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "item_dropper_open" {
	"item_dropper_wrecked_anims\item_dropper_open.smd"
	{ event AE_CL_PLAYSOUND 0 "World.DropperIrisOpen" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "item_dropper_idle_closed" {
	"item_dropper_wrecked_anims\item_dropper_idle_closed.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "item_dropper_close" {
	"item_dropper_wrecked_anims\item_dropper_close.smd"
	{ event AE_CL_PLAYSOUND 0 "World.DropperIrisClose" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$CollisionJoints "item_dropper_wrecked_physics.smd"
{
	$mass 50
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave
	$concaveperjoint

	$jointconstrain "joint1a7" x limit 0 0 0
	$jointconstrain "joint1a7" y limit 0 0 0
	$jointconstrain "joint1a7" z limit 0 0 0

	$jointconstrain "joint1a6" x limit 0 0 0
	$jointconstrain "joint1a6" y limit 0 0 0
	$jointconstrain "joint1a6" z limit 0 0 0

	$jointconstrain "joint1a5" x limit 0 0 0
	$jointconstrain "joint1a5" y limit 0 0 0
	$jointconstrain "joint1a5" z limit 0 0 0

	$jointconstrain "joint1a4" x limit 0 0 0
	$jointconstrain "joint1a4" y limit 0 0 0
	$jointconstrain "joint1a4" z limit 0 0 0

	$jointconstrain "joint1a3" x limit 0 0 0
	$jointconstrain "joint1a3" y limit 0 0 0
	$jointconstrain "joint1a3" z limit 0 0 0

	$jointconstrain "joint1a2" x limit 0 0 0
	$jointconstrain "joint1a2" y limit 0 0 0
	$jointconstrain "joint1a2" z limit 0 0 0

	$jointconstrain "joint1a1" x limit 0 0 0
	$jointconstrain "joint1a1" y limit 0 0 0
	$jointconstrain "joint1a1" z limit 0 0 0

	$jointconstrain "joint1a" x limit 0 0 0
	$jointconstrain "joint1a" y limit 0 0 0
	$jointconstrain "joint1a" z limit 0 0 0

	$jointconstrain "joint1a8" x limit 0 0 0
	$jointconstrain "joint1a8" y limit 0 0 0
	$jointconstrain "joint1a8" z limit 0 0 0
}

$KeyValues
{
	bone_followers 
	{
		"bone" "item_dropper_root"
		"bone" "joint1a"
		"bone" "joint1a1"
		"bone" "joint1a2"
		"bone" "joint1a3"
		"bone" "joint1a4"
		"bone" "joint1a5"
		"bone" "joint1a6"
		"bone" "joint1a7"
		"bone" "joint1a8"
	}
}

