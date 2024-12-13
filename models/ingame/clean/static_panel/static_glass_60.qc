$staticprop

$ModelName "BEE2/panels/static_glass_60.mdl"

$BodyGroup "Body"
{
	studio "static_glass_60.smd"
}

$include "skins_glass.qci"

$Sequence "idle" {
	"idle.smd"
}

$collisionmodel "static_glass_60_phy" {
	$mass 500
	$concave
}
