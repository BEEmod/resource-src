$staticprop

$ModelName "BEE2/panels/static_norm_90.mdl"

$BodyGroup "Body"
{
	studio "static_norm_90.smd"
}

$include "skins.qci"

$Sequence "idle" {
	"idle.smd"
}

$collisionmodel "static_norm_90_phy" {
	$mass 500
	// $concave
}
