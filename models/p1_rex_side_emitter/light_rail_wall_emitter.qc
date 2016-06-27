// Resized version of 'light_rail_wall_emitter', with different texture.

$ModelName "BEE2/props_p1/rex/side_emitter.mdl"

$StaticProp

$origin 0 6 0

$scale 0.75

$BodyGroup "Body"
{
	studio "light_rail_wall_emitter_reference.smd"
}

$renamematerial "light_rail_wall_emitter" "side_emitter"

$texturegroup "skinfamilies" {
	{ "side_emitter" }
	{ "side_emitter_dirty" }
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "BEE2/models/props_p1/rex/"

$CBox 0 0 0 0 0 0

$BBox -8.304 -13.942 -12.761 0.27 13.943 15.123

$Sequence "idle" {
	"anim_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "light_rail_wall_emitter_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
