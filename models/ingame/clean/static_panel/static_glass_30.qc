$staticprop

$ModelName "BEE2/panels/static_glass_30.mdl"

$BodyGroup "Body"
{
	studio "static_glass_30.smd"
}

$include "skins_glass.qci"

$Sequence "idle" {
	"idle.smd"
}

$collisionmodel "static_glass_30_phy" {
	$mass 500
	$concave
}
