$modelname "BEE2/cube_color/p1_cube.mdl"

$model "Body" "metal_box_reference.smd"
$lod 15
 {
  replacemodel "metal_box_reference" "lod1_metal_box_reference"
}
$lod 35
 {
  replacemodel "metal_box_reference" "lod2_metal_box_reference"
}
$lod 60
 {
  replacemodel "metal_box_reference" "lod3_metal_box_reference"
}
$lod 80
 {
  replacemodel "metal_box_reference" "lod4_metal_box_reference"
}
$cdmaterials "BEE2/models/cube_color/" "BEE2/models/cube_color/p1_cube/"

$texturegroup skinfamilies
{
	{ "tint_noglow" "metal_box" } // stand deact
	{ "tint_noglow" "metal_box_comp" } // comp deact
	{ "tint_noglow" "metal_box" } // st active
	{ "tint_noglow" "metal_box" } // dirty deact
	{ "tint_noglow" "metal_box_comp" } // comp active
	{ "tint_noglow" "metal_box" } // dirty active
	 
	{ "tint_noglow_bounce" "metal_box_bounce" } // standard deact bounce
	{ "tint_noglow_speed" "metal_box_speed" } // standard deact speed
	
	{ "tint_noglow_bounce" "metal_box_comp_bounce" } // comp deact bounce
	{ "tint_noglow_speed" "metal_box_comp_speed" } // comp speed
	
	{ "tint_noglow_bounce" "metal_box_bounce" } // standard active bounce
	{ "tint_noglow_speed" "metal_box_speed" } // standard active speed
}
$hboxset "default"
$hbox 0 "polymsh" -19.796  -19.797  -19.795  19.796  19.795  19.795
$surfaceprop "Metal_Box"
$keyvalues  { prop_data { "base" "Metal.small"  } }

$sequence idle "../../p1_metal_box/idle.smd" ACT_IDLE 1 fps 30.00

$collisionmodel "../../p1_metal_box/phymodel.smd" {
	$mass 40.0
	$inertia 1.00
	$damping 0.10
	$rotdamping 0.00
}
