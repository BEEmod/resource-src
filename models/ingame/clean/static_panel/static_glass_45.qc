$staticprop

$ModelName "BEE2/panels/static_glass_45.mdl"

$BodyGroup "Body"
{
	studio "static_glass_45.smd"
}

$include "skins_glass.qci"

$Sequence "idle" {
	"idle.smd"
}

$collisionmodel "static_glass_45_phy" {
	$mass 500
	$concave
}
