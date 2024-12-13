$staticprop

$ModelName "BEE2/panels/static_glass_90.mdl"

$BodyGroup "Body"
{
	studio "static_glass_90.smd"
}

$include "skins_glass.qci"

$Sequence "idle" {
	"idle.smd"
}

$collisionmodel "static_glass_90_phy" {
	$mass 500
	$concave
}
