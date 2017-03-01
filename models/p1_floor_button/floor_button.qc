$ModelName "BEE2/props_p1/floor_button.mdl"

$BodyGroup "g"
{
	studio "floor_button_ref.smd"
}

$LOD 40
{
	replacemodel "floor_button_ref.smd" "floor_button_lod1.smd"
}
$LOD 60
{
	replacemodel "floor_button_ref.smd" "floor_button_lod2.smd"
}
$LOD 100
{
	replacemodel "floor_button_ref.smd" "floor_button_lod3.smd"
}

$SurfaceProp "default"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "BEE2/models/props_p1/floor_button/"

$TextureGroup "skinfamilies"
{
	{ "p1_button" }
	{ "p1_button" }
}

$CBox 0 0 0 0 0 0

// $BBox -62.456 -62.456 -7.358 62.456 62.456 13.64


$Sequence "BindPose" {
	"anim_BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "up" {
	"anim_up.smd"
	{ event AE_CL_PLAYSOUND 0 "BEE2.P1.button_up" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "idledown" {
	"anim_idledown.smd"
	fps 24
}

$Sequence "down" {
	"anim_down.smd"
	{ event AE_CL_PLAYSOUND 0 "BEE2.P1.button_down" }
	fps 24
}

$CollisionJoints "portal_button_physics.smd"
{
	$mass 1967.366
	$inertia 1
	$damping 0
	$concaveperjoint
	$maxconvexpieces 10
	$rotdamping 0

	$jointconstrain "portal_button_top" x limit 0 0 0
	$jointconstrain "portal_button_top" y limit 0 0 0
	$jointconstrain "portal_button_top" z limit 0 0 0
}
