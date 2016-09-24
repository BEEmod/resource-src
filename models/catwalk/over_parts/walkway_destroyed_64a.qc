// Created by Crowbar 0.34.0.0

$ModelName "props_bts\walkway_destroyed_64a.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "walkway_destroyed_64a_reference.smd"
}


$SurfaceProp "metalgrate"

$Contents "grate"

$renamematerial "railing_bts" "catwalk_rusty"

$CDMaterials "BEE2/models/props_overgrown/"

$CBox 0 0 0 0 0 0

$BBox -42.865 -0.25 -13.925 51.19 74.337 53.5


$Sequence "idle" {
	"anim_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "walkway_destroyed_64a_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
