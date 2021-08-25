// Created by Crowbar 0.19.0.0

$modelname "BEE2/panels/arm_2panel_side.mdl"

$bodygroup "Body"
{
	studio "arm_2panel_reference.smd"
}

$origin -32 0 0

$cdmaterials "models/anim_wp/"

// Model uses material "models\anim_wp\arm_64x64.vmt"
// Model uses material "models\anim_wp\arm64x64_rail.vmt"

$texturegroup "skinfamilies"
{
	{
		"arm_64x64"
	}
	{
		"arm_64x64_rusty"
	}
	{
		"arm_64x64_error"
	}
	{
		"arm_64x64_rusty_error"
	}
	{
		"arm_64x64_off"
	}
	{
		"arm_64x64_rusty_off"
	}
}


$attachment "panel_attach" "panel_attach" 0 0 0 rotate 0 0 0

$surfaceprop "metalpanel"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 0 -34.045

// $bbox -63.5 -63.5 -68.09 63.5 63.5 0

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "arms_4panel_root" -32 -12.777454 -0.831811 0 0 63.16819
// $hbox 0 "arm_A_01" -64 -32.918159 0 0.000006 0 18.881659
// $hbox 0 "armpolys_1" -10.76667 -5.397923 -28.654533 10.76666 14.74901 7.958659
// $hbox 0 "armpolys_10" -10.766673 -5.397916 -28.654533 10.76666 14.749018 7.958659
// $hbox 0 "armpolys_2" -9.85057 -10.173037 -10.440723 9.671517 15.425363 10.125995
// $hbox 0 "armpolys_11" -9.850574 -10.173029 -10.440723 9.671514 15.42537 10.125997
// $hbox 0 "arm_A_03X" -64 -14.25222 0 0 0.000042 15.701214
// $hbox 0 "armA_hinge_02" 0 0 -63.999985 49.278999 1.719276 0.000006
// $hbox 0 "armpolys_3" -31.500027 -16.776709 -32.000038 31.999996 0 31.500008
// $hbox 0 "armpolys_13" -31.500011 -16.776709 -31.500059 32.000011 0 31.999983
// $hbox 0 "armpolys_4" -4.031474 -4.349812 -4.031468 7.900301 3.929463 4.03145
// $hbox 0 "armpolys_14" -4.031474 -4.349801 -4.031491 7.900301 3.929473 4.031427
// $hbox 0 "armpolys_5" -5.568158 -3.99078 -3.990798 5.99283 3.9908 3.990784
// $hbox 0 "armpolys_15" -5.568173 -3.990767 -3.990811 5.992815 3.990813 3.99077
// $hbox 0 "armpolys_6" -3.499335 -1.111021 -4.740517 49.475235 4.544781 4.334439
// $hbox 0 "armpolys8B" -4.598273 -3.5739 -6.550523 37.004395 5.230475 6.550508
// $hbox 0 "armpolys_16" -3.499328 -1.111036 -4.740536 49.475243 4.544765 4.334424
// $hbox 0 "armpolys_12" -4.598265 -3.573914 -6.550546 37.004398 5.230464 6.550488
// $hbox 0 "armpolys_7" -2.812581 -8.314725 -9.136333 19.606144 3.472128 9.136368
// $hbox 0 "armpolys_17" -2.812571 -8.314719 -9.136341 19.606152 3.472131 9.136368
// $hbox 0 "arm_polys_8A" -11.528506 -21.929211 -9.582956 11.535312 9.294848 22.475723
// $hbox 0 "armpolys_18" -11.528517 -21.929203 -9.582956 11.535307 9.29486 22.475721
// $hbox 0 "armpolys_9" -15.421103 -44.523319 -15.063881 15.421092 4.367196 14.158611
// $hbox 0 "armpolys_19" -15.421102 -44.523308 -15.063881 15.42109 4.367208 14.158611
// $hbox 0 "armC_01" -64 -32.918159 0 0.000006 0 18.88166
// $hbox 0 "armpolys_20" -10.76667 -5.397927 -17.72084 10.76666 14.74901 7.958659
// $hbox 0 "armpolys_30" -10.766673 -5.39792 -18.994518 10.76666 14.749018 7.958659
// $hbox 0 "armpolys_21" -9.85057 -10.17304 -10.440719 9.671517 15.425363 10.125995
// $hbox 0 "armpolys_31" -9.85057 -10.173029 -10.440719 9.671517 15.42537 10.125995
// $hbox 0 "armC_03X" -64 -14.252232 0 0 0.000038 15.701218
// $hbox 0 "armC_hinge02" -0.000002 0 -63.999977 49.279003 1.71928 0.000011
// $hbox 0 "armpolys_22" -4.598265 -3.573905 -6.550525 37.004391 5.230471 6.550504
// $hbox 0 "armpolys_23" -32.000019 -16.776712 -32.000042 31.500002 0 31.50001
// $hbox 0 "armpolys_33" -32.000008 -16.776712 -31.500061 31.500013 0 31.999985
// $hbox 0 "armpolys_24" -4.03147 -4.349813 -4.03147 7.900303 3.929464 4.031447
// $hbox 0 "armpolys_34" -4.03147 -4.349802 -4.03149 7.900305 3.929476 4.031427
// $hbox 0 "armpolys_25" -5.568156 -3.990782 -3.990799 5.992834 3.990796 3.990785
// $hbox 0 "armpolys_35" -5.568173 -3.990769 -3.990807 5.992816 3.990809 3.990773
// $hbox 0 "armpolys_26" -3.499331 -1.111032 -4.740517 49.475239 4.544777 4.334439
// $hbox 0 "armpolys_32" -4.598263 -3.573913 -6.550542 37.004398 5.230464 6.55049
// $hbox 0 "armpolys_36" -3.499327 -1.11104 -4.740532 49.475243 4.544765 4.334424
// $hbox 0 "armpolys_27" -2.812577 -8.314728 -9.136339 19.606148 3.472126 9.136364
// $hbox 0 "armpolys_37" -2.812569 -8.314723 -9.136341 19.606152 3.472127 9.136368
// $hbox 0 "armpolys_28" -11.528506 -21.929214 -9.58296 11.535312 9.294848 22.475719
// $hbox 0 "armpolys_38" -11.528513 -21.929199 -9.58296 11.535311 9.294856 22.475714
// $hbox 0 "armpolys_29" -15.421103 -44.523319 -0.112863 15.421725 0.000006 14.158613
// $hbox 0 "armpolys_39" -15.421102 -44.523308 -0.112863 15.42109 0.000017 14.158613
// $hbox 0 "polySurface249" -61.940865 -22.89419 -4.558878 61.940865 0 7.561527




$sequence "idle" "arm_4panel_anims\idle.smd" {
	fps 30
}

$sequence "ramp_30_deg_open" "arm_4panel_anims\ramp_30_deg_open.smd" {
	fps 30
}

$sequence "ramp_30_deg_close" "arm_4panel_anims\ramp_30_deg_close.smd" {
	fps 30
}

$sequence "ramp_45_deg_open" "arm_4panel_anims\ramp_45_deg_open.smd" {
	fps 30
}

$sequence "ramp_45_deg_close" "arm_4panel_anims\ramp_45_deg_close.smd" {
	fps 30
}

$sequence "ramp_60_deg_open" "arm_4panel_anims\ramp_60_deg_open.smd" {
	fps 30
}

$sequence "ramp_60_deg_close" "arm_4panel_anims\ramp_60_deg_close.smd" {
	fps 30
}

$sequence "ramp_90_deg_open" "arm_4panel_anims\ramp_90_deg_open.smd" {
	fps 30
}

$sequence "ramp_90_deg_close" "arm_4panel_anims\ramp_90_deg_close.smd" {
	fps 30
}

