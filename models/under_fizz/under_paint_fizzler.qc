$ModelName "BEE2/props_underground/under_paint_fizz.mdl"

$StaticProp

$SurfaceProp "metalgrate"

//$cdMaterials "models/props_underground/underground_fizzler"
$cdMaterials "BEE2/models/props_underground/cust_fizz/"

$Contents "solid"

// Put the origin near the center, not the side.
$origin -16 0 64

$Sequence "BindPose" {
	"BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "retro_paint_fizz_phy.smd"
{
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave
}

$BodyGroup "default"
{
	studio "retro_paint_fizz_ref.smd"
}

$LOD 50 // orig - 30
{
	replacemodel "retro_paint_fizz_ref.smd" "retro_paint_fizz_lod1.smd"
}
$LOD 80 // orig - 50
{
	replacemodel "retro_paint_fizz_ref.smd" "retro_paint_fizz_lod2.smd"
}
