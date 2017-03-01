// Created by Crowbar 0.36.0.0

$ModelName "BEE2/catwalk/overgrown/hanging_walkway_corner.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "hanging_walkway_corner_reference.smd"
}

$LOD 50
{
	replacemodel "hanging_walkway_corner_reference.smd" "hanging_walkway_corner_lod1.smd"
}

$SurfaceProp "metalgrate"

$Contents "grate"

$renamematerial "railing_bts" "catwalk_rusty"

$CDMaterials "BEE2/models/props_overgrown/"


$Sequence "idle" {
	"anim_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "hanging_walkway_corner_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 24
}
