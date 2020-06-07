
$ModelName "BEE2/props_underground\mech_plate_large.mdl"

$BodyGroup "plate"
{
	studio "mech_plate_large_ref.smd"
}
$BodyGroup "neon"
{
	blank
	studio "large_io_neon.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "models/props_underground/"
$CDMaterials "BEE2/models/props_underground/"

$texturegroup "skinfamilies" {
	{ "indicator_neon_straight_blue" }
	{ "indicator_neon_straight_blink" }
}

// Illuminate above the floor so it's nice and bright
$illumposition 0 0 8

$Sequence "idle" "anims/idle.smd" {

}

$Sequence "fire" "anims/straightup.smd" {
	fps 30
	snap
}

$collisionmodel "large_phy.smd" {
	$mass 1000
}
