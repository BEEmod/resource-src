// Created by Crowbar 0.34.0.0

$ModelName "BEE2/catwalk/overgrown/hanging_walkway_x.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "hanging_walkway_x_reference.smd"
}

$LOD 50
{
	replacemodel "hanging_walkway_x_reference.smd" "hanging_walkway_x_lod1.smd"
}

$SurfaceProp "metalgrate"

$Contents "grate"

$renamematerial "railing_bts" "catwalk_rusty"

$CDMaterials "BEE2/models/props_overgrown/"

$CBox 0 0 0 0 0 0

$BBox -64.25 -64.25 -4.25 64.25 64.25 53.75


$Sequence "idle" {
	"anim_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "hanging_walkway_x_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
