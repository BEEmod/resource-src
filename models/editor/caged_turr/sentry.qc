// Created by Crowbar 0.19.0.0

$modelname "props_map_editor/tspen_caged_turret.mdl"

$bodygroup "Body"
{
	studio "sentry_reference.smd"
}

$cdmaterials "models/props_map_editor"

// Model uses material "models\props_map_editor\turret.vmt"

$surfaceprop "metalpanel"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0.383 0 -17.821

// $bbox -32.229 -16.67 -64.141 32.229 17.436 28.499

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "turret_gun01" 0 0 -5.560303 9.270716 29.312012 0
// $hbox 0 "polySurface130" 0 -18.780439 -18.307436 18.590603 0 0
// $hbox 0 "polySurface129" 0 -39.468819 -16.212778 19.591885 6.269672 4.7853
// $hbox 0 "turret_gun02" -8.50411 0 -5.560303 0 29.312012 0
// $hbox 0 "polySurface126" -17.823826 -18.780521 -18.119549 0 0 0
// $hbox 0 "polySurface125" -18.825537 -39.468956 -16.212887 0 6.269512 4.785199
// $hbox 0 "polySurface127" -16.669678 -64.141121 -32.229073 17.435852 28.499176 32.229191




$sequence "idle" "sentry_anims\idle.smd" {
	fps 30
}

$sequence "explodeOut" "sentry_anims\pullguns.smd" {
	fps 30
}

$sequence "explodeIn" "sentry_anims\retractguns.smd" {
	fps 30
}

