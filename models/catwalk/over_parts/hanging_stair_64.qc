// Created by Crowbar 0.36.0.0

$ModelName "BEE2/catwalk/overgrown/hanging_stair_64.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "hanging_stair_64_reference.smd"
}

$LOD 50
{
	replacemodel "hanging_stair_64_reference.smd" "hanging_stair_64_lod1.smd"
}

$SurfaceProp "metalgrate"

$Contents "grate"

$renamematerial "railing_bts" "catwalk_rusty"

$CDMaterials "BEE2/models/props_overgrown/"

$CBox 0 0 0 0 0 0

$BBox -42.75 -80.25 -36.25 42.75 80.25 85.75


$Sequence "idle" {
	"anim_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "hanging_stair_64_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
}
