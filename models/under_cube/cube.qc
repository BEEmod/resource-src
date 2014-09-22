// Created by Crowbar 0.19.0.0

$modelname "props_map_editor/ts_under_cube.mdl"

$cdmaterials "models/props_map_editor/tspen/"

$bodygroup "Body"
{
	studio "under_cube.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 0 -61.568

// $bbox -19.796 -19.796 -123.136 19.795 19.796 0

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "polySurface22" -5.809681 0 -5.809199 5.806897 17.329103 5.807381
// $hbox 0 "polySurface20" -9.90268 0 -9.909709 9.89991 17.218004 9.892883
// $hbox 0 "polySurface18" -11.174001 0 -11.173599 11.1713 17.577305 11.171701
// $hbox 0 "polySurface15" -10.750002 0 -10.3004 10.750002 15.000004 10.300402
// $hbox 0 "polySurface31" -9 -9.000001 -9 9 9.750002 9
// $hbox 0 "polySurface32" -9.400002 0 -11.499996 9.4 69.350815 11.375011
// $hbox 0 "polySurface25" -11.483298 -61.193813 -11.483304 11.483302 0 11.483299
// $hbox 0 "polySurface24" -19.795603 -63.895008 -19.795605 19.795603 0 19.795404
$sequence "idle_ground" "cube_anims\idle_ground.smd" {
	fps 30
}

$sequence "idle_hover" "cube_anims\idle_hover.smd" {
	fps 30
}

$sequence "explodeOut" "cube_anims\explodeOut.smd" {
	fps 30
}

$sequence "explodeIn" "cube_anims\explodeIn.smd" {
	fps 30
}

$sequence "hover_explodeOut" "cube_anims\hover_explodeOut.smd" {
	fps 30
}

$sequence "hover_explodeIn" "cube_anims\hover_explodeIn.smd" {
	fps 30
}

$sequence "drop_explodeOut" "cube_anims\drop_explodeOut.smd" {
	fps 30
}

$sequence "drop_explodeIn" "cube_anims\drop_explodeIn.smd" {
	fps 30
}

$sequence "lift_explodeOut" "cube_anims\lift_explodeOut.smd" {
	fps 30
}

$sequence "lift_explodeIn" "cube_anims\lift_explodeIn.smd" {
	fps 30
}