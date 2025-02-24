// Created by Crowbar 0.34.0.0

$ModelName "props_map_editor/BEE2/clean/rocket_sentry.mdl"

$BodyGroup "studio"
{
	studio "rocket_sentry_comb.smd"
}

$texturegroup "skinfamilies" {
	{ "rocket_sentry" }
	{ "rocket_sentry_orig" }
}

// $LOD 6
// {
	// replacemodel "rocket_sentry_reference.smd" "rocket_sentry_reference_lod1.smd"
// }
// $LOD 12
// {
	// replacemodel "rocket_sentry_reference.smd" "rocket_sentry_reference_lod2.smd"
	// replacemodel "rocket_sentry_reference.smd" "rocket_sentry_reference_lod3.smd"
// }

$origin 0 0 64

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "BEE2/models/props_map_editor/rocket_sentry"

$Sequence "idle_down" {
	"rocket_sentry_anims\inactive.smd"
	fps 30
}

$Sequence "raise" {
	"rocket_sentry_anims\open.smd"
	fps 60
}

$Sequence "lower" {
	"rocket_sentry_anims\close.smd"
	fps 60
}

$Sequence "idle_up" {
	"rocket_sentry_anims\idle.smd"
	fps 30
}

$Sequence "load" {
	"rocket_sentry_anims\load.smd"
	fps 30
}

$Sequence "fire" {
	"rocket_sentry_anims\fire.smd"
	fps 30
}


