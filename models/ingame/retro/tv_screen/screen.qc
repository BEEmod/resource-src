$modelname "BEE2/props_underground/tv_screen"

$body "Body" "screen_ref"

$cdmaterials "BEE2/models/props_underground/"

$sequence idle "screen_ref"

$surfaceprop "glass"

$texturegroup "skinfamiles" {
	{ "tv_screen_off" }
	{ "tv_screen_on" }
}

$collisionmodel "screen_phy"  {
	$automass
}

