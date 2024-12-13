$staticprop

$ModelName "BEE2/panels/static_norm_30.mdl"

$BodyGroup "Body"
{
	studio "static_norm_30.smd"
}

$include "skins.qci"

$Sequence "idle" {
	"idle.smd"
}

$collisionmodel "static_norm_30_phy" {
	$mass 500
	$concave
}
