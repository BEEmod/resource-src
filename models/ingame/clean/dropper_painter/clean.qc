// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_clean/dropper_painter.mdl"

$body "sprayer" "clean_sprayer_ref.smd"


$lod 30 {
	replacemodel "clean_sprayer_ref.smd" "clean_sprayer_lod1.smd"
}

$lod 65 {
	replacemodel "clean_sprayer_ref.smd" "clean_sprayer_lod2.smd"
}

$cdmaterials "models/props_bts/"

$surfaceprop "metalpanel"

$contents "solid"

$texturegroup "skinfamilies" {
	{ "straight_piston" }
	{ "straight_piston_rusty" }
}

$staticprop

$sequence "idle" "clean_sprayer_ref.smd" {
	fps 30
}

