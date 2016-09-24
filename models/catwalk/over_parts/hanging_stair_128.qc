// Created by Crowbar 0.34.0.0

$ModelName "BEE2/catwalk/overgrown/hanging_stair_128.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "hanging_stair_128_reference.smd"
}

$LOD 50
{
	replacemodel "hanging_stair_128_reference.smd" "hanging_stair_128_lod1.smd"
}

$SurfaceProp "metalgrate"

$Contents "grate"

$renamematerial "railing_bts" "catwalk_rusty"

$CDMaterials "BEE2/models/props_overgrown/"

$CBox 0 0 0 0 0 0

$BBox -42.75 -128.25 -68.25 42.75 128.25 117.75


$Sequence "idle" {
	"anim_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "hanging_stair_128_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
