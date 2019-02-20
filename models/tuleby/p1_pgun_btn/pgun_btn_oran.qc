$ModelName "BEE2/props_p1/tuleby/pgun_button_oran.mdl"

$BodyGroup "g"
{
	studio "pgun_btn_ref.smd"
}

$LOD 40
{
	replacemodel "pgun_btn_ref.smd" "pgun_btn_lod1.smd"
}
$LOD 60
{
	replacemodel "pgun_btn_ref.smd" "pgun_btn_lod2.smd"
}
$LOD 100
{
	replacemodel "pgun_btn_ref.smd" "pgun_btn_lod3.smd"
}

$SurfaceProp "default"

$Contents "solid"

$CDMaterials "BEE2/models/props_p1/tuleby/"
$CDMaterials "BEE2/models/props_clean/tuleby/"

$TextureGroup "skinfamilies"
{
	{ "pgun_btn_oran" "screen_oran" }
	{ "pgun_btn_oran" "screen_oran" }
}

$CBox 0 0 0 0 0 0

// $BBox -62.456 -62.456 -7.358 62.456 62.456 13.64


$Sequence "BindPose" {
	"anims/anim_BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "up" {
	"anims/anim_up.smd"
	{ event AE_CL_PLAYSOUND 0 "BEE2.P1.button_up" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "idledown" {
	"anims/anim_idledown.smd"
	fps 24
}

$Sequence "down" {
	"anims/anim_down.smd"
	{ event AE_CL_PLAYSOUND 0 "BEE2.P1.button_down" }
	fps 24
}

$CollisionJoints "pgun_btn_phy.smd"
{
	$mass 2000
	$inertia 1
	$damping 0
	$concaveperjoint
	$maxconvexpieces 10
	$rotdamping 0

	$jointconstrain "portal_button_top" x limit 0 0 0
	$jointconstrain "portal_button_top" y limit 0 0 0
	$jointconstrain "portal_button_top" z limit 0 0 0
}
