$cd "C:\Users\shad0w440\Desktop\mapmaker\crusher"
$modelname "anim_wp/cursher/crusher.mdl"
$model "default" "crusher_model.dmx.smd"

$lod 50
 {
  replacemodel "crusher_model.dmx" "lod1_crusher_model.dmx"
}
$lod 100
 {
  replacemodel "crusher_model.dmx" "lod2_crusher_model.dmx"
}
$cdmaterials ""
$hboxset "default"
$hbox 0 "base_Zrot" -28.329  -122.326  -526.119  25.972  26.009  185.238
$hbox 0 "base_Yrot" -11.429  -45.136  -7.065  11.189  0.613  30.972
$hbox 0 "pistonB_base" -1.901  -3.046  -2.638  23.840  3.046  2.638
$hbox 0 "pistonB_tip" 0.000  -1.949  -1.688  46.079  1.949  1.688
$hbox 0 "pistonA_base" -1.600  -3.333  -3.662  32.152  3.396  3.662
$hbox 0 "pistonA_tip" 0.000  -1.912  -1.795  42.692  1.780  1.795
$hbox 0 "base_Xrot_telescope_00" -18.017  -25.563  -25.563  18.091  153.301  25.563
$hbox 0 "base_Xrot_telescope_02" -6.804  0.000  -7.323  6.828  18.169  7.323
$hbox 0 "angle01_rotX" -8.301  0.000  0.000  8.301  31.671  31.316
$hbox 0 "angle02_rotX" -12.813  -4.604  -28.378  12.813  17.590  4.554
$hbox 0 "panel_twister_rotZ" -18.136  -21.401  -132.779  16.283  8.644  0.000
$hbox 0 "paneltop_rotX" -96.000  -6.132  -60.085  96.000  56.463  132.786
$attachment "base_attach" "base_Zrot" 0.00 -47.83 -0.12 rotate -0.00 0.00 0.00
$surfaceprop "default"
$keyvalues  {  } 
$illumposition -256.372 0.000 -124.281
$sequence BindPose "BindPose" fps 30.00
$sequence smash_idle "smash_idle" loop fps 24.00
$sequence smash_out "smash_out" fps 24.00 {
  { event AE_CL_PLAYSOUND 16 "World.CrusherSeparate" }
  { event AE_CL_PLAYSOUND 4 "World.CrusherOpen" }
  { event AE_CL_PLAYSOUND 58 "World.RobotImpactLgCrusher" }
}

$sequence smash_fast "smash_fast" fps 30.00
$sequence smash_out_idle "smash_out_idle" loop fps 24.00
$sequence smash_big "smash_big" fps 24.00 {
  { event AE_CL_PLAYSOUND 56 "World.CrusherSeparateBig" }
  { event AE_CL_PLAYSOUND 40 "World.CrusherOpenBig" }
}

$sequence wall_smashA "wall_smashA" fps 30.00
$sequence wall_smashA_idle "wall_smashA_idle" fps 30.00
$sequence smash_in "smash_in" fps 24.00 rotate -90
