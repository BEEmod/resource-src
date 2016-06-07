// Created by Crowbar 0.34.0.0

$ModelName "BEE2/props_p1/lab_floorlight_lrg.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "glados_floorlight_reference.smd"
}


$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "models\props_bts\"

$CBox 0 0 0 0 0 0

$BBox -28.496 -28.496 -3.556 28.496 28.496 5.652

$DefineBone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$Sequence "idle" {
	"glados_floorlight_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "glados_floorlight_physics.smd"
{
	$mass 30
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
