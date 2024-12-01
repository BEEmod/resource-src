$staticprop

$ModelName "BEE2/panels/static_norm_60.mdl"

$BodyGroup "Body"
{
	studio "static_norm_60.smd"
}

$include "skins.qci"

$Sequence "idle" {
	"idle.smd"
}

$collisionmodel "static_norm_60_phy" {
	$mass 500
}
