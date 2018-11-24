// Created by Crowbar 0.19.0.0

$modelname "props_map_editor/BEE2_ret_btn_clean_cube.mdl"

$bodygroup "Body"
{
	studio "buttoncube_reference.smd"
}

$cdmaterials "models/props_map_editor/" "BEE2/models/props_map_editor/"


// Model uses material "models\props_map_editor\buttons.vmt"

$surfaceprop "metalpanel"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 0 -32

// $bbox -51.792 -51.792 -64 51.792 51.792 0

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "boxsocket_geo_42" -37.735207 0 -37.735207 37.735207 9.262993 37.735207
// $hbox 0 "boxsocket_geo_43" -51.791737 0 -51.791737 51.791737 6.270023 51.791737
// $hbox 0 "polySurface740" -50.735352 0 -50.735352 50.735352 12.388699 50.735352
// $hbox 0 "boxsocket_geo_45" -5.793976 0 -5.793983 5.793976 9.824013 5.793985
// $hbox 0 "boxsocket_geo_46" -9.784729 0 -9.784725 9.784729 8.529743 9.784727
// $hbox 0 "boxsocket_geo_48" -2.862623 0 -2.862622 2.862623 6.600471 2.862622
// $hbox 0 "boxsocket_geo_49" -3.071777 0 -3.071789 2.921448 3.296192 3.071787
// $hbox 0 "boxsocket_geo_50" -10.303162 0 -10.303207 10.303223 10.39492 10.30321
// $hbox 0 "boxsocket_geo_51" -5.733368 0 -5.733372 5.733368 4.93993 5.733375
// $hbox 0 "boxsocket_geo_52" -2.196167 0 -2.196162 2.196167 6.90065 2.196162
// $hbox 0 "boxsocket_geo_53" -24.593536 0 -24.593521 24.593536 18.751495 24.593521
// $hbox 0 "boxsocket_geo_54" -21.866558 0 -21.866514 21.866558 6.439636 21.866514
// $hbox 0 "boxsocket_geo_55" -14.473206 0 -15.381907 14.473328 6.455807 7.915554
// $hbox 0 "boxsocket_geo_56" -17.995667 0 -17.269585 17.995667 7.3172 17.848913
// $hbox 0 "boxsocket_geo_57" -29.400787 0 0 0 12.388702 29.408081
// $hbox 0 "boxsocket_geo_59" -28.927032 0 0 0 11.941021 16.100328
// $hbox 0 "boxsocket_geo_60" -28.927032 0 0 0 11.963619 21.933708
// $hbox 0 "boxsocket_geo_61" -28.927032 0 0 0 11.923264 27.76709
// $hbox 0 "boxsocket_geo_62" -24.555328 0 0 0 11.923264 28.934345
// $hbox 0 "boxsocket_geo_63" -18.455078 0 0 0 11.923264 28.934345
// $hbox 0 "boxsocket_geo_64" -12.354829 0 0 0 11.923264 28.934345
// $hbox 0 "boxsocket_geo_65" 0 0 0 38.283421 9.262993 38.283417
// $hbox 0 "boxsocket_geo_66" -38.283421 0 -38.283421 38.283417 9.262993 38.283421




$sequence "idle" "buttoncube_anims\idle.smd" {
	fps 30
}

$sequence "explodeOut" "buttoncube_anims\explodeOut.smd" {
	fps 30
}

$sequence "explodeIn" "buttoncube_anims\explodeIn.smd" {
	fps 30
}

$sequence "push" "buttoncube_anims\push.smd" {
	fps 30
}

