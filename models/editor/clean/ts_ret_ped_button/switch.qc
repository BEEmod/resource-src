// Created by Crowbar 0.19.0.0

$modelname "props_map_editor/ts_ret_ped_button.mdl"

$bodygroup "Body"
{
	studio "switch_reference.smd"
}

$origin 0 24 0

$cdmaterials "models/props_map_editor/" "BEE2/models/props_map_editor/"

// Model uses material "models\props_map_editor\pedestal_button.vmt"

$surfaceprop "metalpanel"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 26.037 -28.996

// $bbox -52.074 -12.65 -64.003 0 12.65 6.01

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "pedbut_geo_1" -12.649932 -64.002655 -52.073933 12.649932 2.452597 0
// $hbox 0 "pedbut_geo_2" -6.842801 -1.748966 -11.496727 6.839354 6.010448 0.352362
// $hbox 0 "pedbut_geo_3" -5.939527 -1.495663 -10.930893 5.93608 4.721879 0
// $hbox 0 "pedbut_geo_4" -3.960367 -2.226109 -10.209545 3.960365 3.136478 0
// $hbox 0 "pedbut_geo_5" -6.333804 -4.727498 -13.2897 6.63946 2.480928 0
// $hbox 0 "pedbut_geo_6" -9.050924 -7.998505 -16.474953 9.050922 4.9473 1.626898
// $hbox 0 "pedbut_geo_7" -8.856538 -7.691754 -15.236889 8.853092 1.442799 0.261606
// $hbox 0 "pedbut_geo_8" -5.024374 -8.032737 -13.354874 5.024375 0 0

$sequence "idle" "switch_anims\idle.smd" {
	fps 30
}

$sequence "explodeOut" "switch_anims\explodeOut.smd" {
	fps 30
}

$sequence "explodeIn" "switch_anims\explodeIn.smd" {
	fps 30
}

$sequence "push" "switch_anims\push.smd" {
	fps 30
}

