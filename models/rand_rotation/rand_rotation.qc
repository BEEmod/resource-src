$modelname "backstock/random_rotation.mdl"

$bodygroup mdl {
	studio "metal_box_norm.smd"
	studio "metal_box_comp.smd"
	studio "metal_box_on.smd"
	studio "sphere.smd"
	studio "sphere_on.smd"
	studio "reflection_cube_lod2.smd"
	studio "turret.smd"
	studio "turret_box.smd"
}

$cdmaterials "models/props_vac_anim" "models/props" "models/props_gameplay" 

$attachment "attach" "rot" 0 0 0 rotate 0 0 0

$sequence "idle" "idle.smd" {
	fps 10
}

$definemacro vac_anim anim filename \\
$sequence $anim$ $filename$ { \\
	fps 20 \\
} \\

$vac_anim "anim_1" "anims/anim_1.smd"
$vac_anim "anim_2" "anims/anim_2.smd"
$vac_anim "anim_3" "anims/anim_3.smd"
$vac_anim "anim_4" "anims/anim_4.smd"
$vac_anim "anim_5" "anims/anim_5.smd"
$vac_anim "anim_6" "anims/anim_6.smd"
$vac_anim "anim_7" "anims/anim_7.smd"
$vac_anim "anim_8" "anims/anim_8.smd"
$vac_anim "anim_9" "anims/anim_9.smd"
$vac_anim "anim_10" "anims/anim_10.smd"
$vac_anim "anim_11" "anims/anim_11.smd"
$vac_anim "anim_12" "anims/anim_12.smd"
$vac_anim "anim_13" "anims/anim_13.smd"
$vac_anim "anim_14" "anims/anim_14.smd"
$vac_anim "anim_15" "anims/anim_15.smd"
$vac_anim "anim_16" "anims/anim_16.smd"
$vac_anim "anim_17" "anims/anim_17.smd"
$vac_anim "anim_18" "anims/anim_18.smd"
$vac_anim "anim_19" "anims/anim_19.smd"
$vac_anim "anim_20" "anims/anim_20.smd"
$vac_anim "anim_21" "anims/anim_21.smd"
$vac_anim "anim_22" "anims/anim_22.smd"
$vac_anim "anim_23" "anims/anim_23.smd"
$vac_anim "anim_24" "anims/anim_24.smd"
$vac_anim "anim_25" "anims/anim_25.smd"
$vac_anim "anim_26" "anims/anim_26.smd"
$vac_anim "anim_27" "anims/anim_27.smd"
$vac_anim "anim_28" "anims/anim_28.smd"
$vac_anim "anim_29" "anims/anim_29.smd"
$vac_anim "anim_30" "anims/anim_30.smd"
$vac_anim "anim_31" "anims/anim_31.smd"
$vac_anim "anim_32" "anims/anim_32.smd"
$vac_anim "anim_33" "anims/anim_33.smd"
$vac_anim "anim_34" "anims/anim_34.smd"
$vac_anim "anim_35" "anims/anim_35.smd"
$vac_anim "anim_36" "anims/anim_36.smd"
$vac_anim "anim_37" "anims/anim_37.smd"
$vac_anim "anim_38" "anims/anim_38.smd"
$vac_anim "anim_39" "anims/anim_39.smd"
$vac_anim "anim_40" "anims/anim_40.smd"
$vac_anim "anim_41" "anims/anim_41.smd"
$vac_anim "anim_42" "anims/anim_42.smd"
$vac_anim "anim_43" "anims/anim_43.smd"
$vac_anim "anim_44" "anims/anim_44.smd"
$vac_anim "anim_45" "anims/anim_45.smd"
$vac_anim "anim_46" "anims/anim_46.smd"
$vac_anim "anim_47" "anims/anim_47.smd"
$vac_anim "anim_48" "anims/anim_48.smd"
$vac_anim "anim_49" "anims/anim_49.smd"
$vac_anim "anim_50" "anims/anim_50.smd"