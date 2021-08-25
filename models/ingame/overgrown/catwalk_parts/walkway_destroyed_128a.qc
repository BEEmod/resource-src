// Created by Crowbar 0.34.0.0

$ModelName "BEE2/catwalk/overgrown/walkway_destroyed_128a.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "walkway_destroyed_128a_reference.smd"
}


$SurfaceProp "metalgrate"

$Contents "grate"

$renamematerial "railing_bts" "catwalk_rusty"

$CDMaterials "BEE2/models/props_overgrown/"

$CBox 0 0 0 0 0 0

$BBox -42.75 -122.723 -22.72 47.147 0.25 53.75


$Sequence "idle" {
	"anim_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "walkway_destroyed_128a_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
