$staticprop

$ModelName "BEE2/panels/static_norm_45.mdl"

$BodyGroup "Body"
{
	studio "static_norm_45.smd"
}

$include "skins.qci"

$Sequence "idle" {
	"idle.smd"
}

$collisionmodel "static_norm_45_phy" {
	$mass 500
	$concave
}
