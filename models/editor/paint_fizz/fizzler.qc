// Created by Crowbar 0.19.0.0

$modelname "props_map_editor/ts_paint_fizz.mdl"

$bodygroup "Body"
{
	studio "fizzler_reference.smd"
}

$cdmaterials "models/props_map_editor/tspen/paint_fizz"

$surfaceprop "metalpanel"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 0 -32

// $bbox -16 -64 -64 16 64 0

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "fizzler_geo_13" -16.000002 -63.999996 -0.000003 15.999997 64 1.64835
// $hbox 0 "fizzler_geo_14" -6.880313 -59.572426 0 6.880307 59.572433 19.683428
// $hbox 0 "fizler_activate_button" -4.09363 0 0 4.093641 19.247829 17.159601
// $hbox 0 "fizzler_blue_cylinders" -5.470329 0 0 5.470324 50.35894 6.603683
// $hbox 0 "fizzler_lights1" -1.32297 -50.594929 0 1.324217 50.636234 19.683435
// $hbox 0 "fizzler_geo_15" -6.177248 -41.18298 0 6.177259 0 14.725553
// $hbox 0 "fizzler_geo_16" -4.53554 -20.412628 0 4.535535 0 16.86038
// $hbox 0 "fizzler_geo_21" -7.455905 -58.159069 0 7.455914 58.195988 10.670881
// $hbox 0 "fizzler_geo_22" -8.234408 -58.568741 0 8.234404 58.589951 18.305414
// $hbox 0 "fizzler_geo_23" -8.322909 -63.524979 0 8.322905 63.546188 21.57592
// $hbox 0 "fizzler_geo_24" -1.300662 -63.266647 0 1.300657 63.287857 21.319935

$sequence "idle" "idle.smd" {
	fps 30
}

$sequence "explodeOut" "explodeOut.smd" {
	fps 30
}

$sequence "explodeIn" "explodeIn.smd" {
	fps 30
}

