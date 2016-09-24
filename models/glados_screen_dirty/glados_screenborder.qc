// Created by Crowbar 0.34.0.0

$ModelName "BEE2/props_overgrown/glados_screen_flat.mdl"

$BodyGroup "Body"
{
	studio "glados_screenborder_reference.smd"
}


$SurfaceProp "metal"

$Contents "solid"

$renamematerial "glados_screenborder" "glados_screen_dirty"

$CDMaterials "BEE2/models/props_overgrown/"

$CBox 0 0 0 0 0 0

$BBox -124.381 -18.084 -60.62 124.381 13.69 61.019


$Sequence "idle" {
	"glados_screenborder_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "glados_screenborder_physics.smd"
{
	$mass 30
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
