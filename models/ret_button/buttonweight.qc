// Created by Crowbar 0.19.0.0

$modelname "props_map_editor/tspen_ret_btn_floor.mdl"

$bodygroup "Body"
{
	studio "buttonweight_reference.smd"
}

$cdmaterials "models/props_map_editor/"


// Model uses material "models\props_map_editor\buttons.vmt"

$surfaceprop "metalpanel"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 0 -32

// $bbox -61.126 -61.126 -64 61.126 61.126 0

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "button_geo_0_1" -10.405513 0 -10.437885 10.465005 15.640247 10.432632
// $hbox 0 "button_geo_0_2" -9.784721 0 -9.784724 9.784725 14.001762 9.784727
// $hbox 0 "button_geo_0_3" -2.196162 0 -2.196162 2.196162 14.432709 2.196161
// $hbox 0 "button_geo_0_4" -3.07179 0 -3.071789 2.921443 14.267494 3.071787
// $hbox 0 "button_geo_0_5" -2.862623 0 -2.862623 2.862623 11.990299 2.862622
// $hbox 0 "button_geo_0_6" -31.774923 0 -31.808338 31.81344 15.640251 31.798031
// $hbox 0 "button_geo_0_7" -29.012253 0 -29.012249 29.012234 11.894753 29.012222
// $hbox 0 "button_geo_0_8" 0 0 0 18.08577 8.434338 27.27133
// $hbox 0 "button_geo_0_9" 0 0 0 20.299843 8.434338 24.753136
// $hbox 0 "button_geo_0_10" 0 0 0 22.500511 8.434338 22.250187
// $hbox 0 "button_geo_0_11" 0 0 0 24.672812 8.434338 19.779505
// $hbox 0 "button_geo_0_12" 0 0 0 26.886883 8.434338 17.261312
// $hbox 0 "button_geo_0_13" 0 0 0 29.087553 8.434338 14.758364
// $hbox 0 "button_geo_0_14" 0 0 0 31.494287 7.267647 29.757696
// $hbox 0 "button_geo_0_15" -30.535574 0 -28.188116 30.534805 11.894756 28.186754
// $hbox 0 "button_geo_0_16" -31.040098 0 -28.756599 31.0401 9.705853 28.756599
// $hbox 0 "button_geo_0_17" -15.831106 0 -16.896776 15.831106 10.73365 16.896774
// $hbox 0 "button_geo_0_18" -16.320438 0 -17.204826 16.320436 8.333572 17.204828
// $hbox 0 "button_geo_0_19" 0 0 -46.366776 46.366776 11.086483 0
// $hbox 0 "button_geo_0_20" -46.366776 0 -46.366779 46.366776 11.086483 46.366776
// $hbox 0 "button_geo_0_21" -46.316292 0 -46.316303 46.316254 8.321556 46.316269
// $hbox 0 "button_geo_0_22" -61.125732 0 -61.125732 61.125732 11.086502 61.125732




$sequence "idle" "buttonweight_anims\idle.smd" {
	fps 30
}

$sequence "explodeOut" "buttonweight_anims\explodeOut.smd" {
	fps 30
}

$sequence "explodeIn" "buttonweight_anims\explodeIn.smd" {
	fps 30
}

$sequence "push" "buttonweight_anims\push.smd" {
	fps 30
}

