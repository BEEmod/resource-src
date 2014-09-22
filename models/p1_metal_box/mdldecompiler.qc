$modelname "props_ingame/p1_metal_box.mdl"
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
$cdmaterials "models/props_ingame/p1_metal_box"
$texturegroup skinfamilies
{
	{ "metal_box.vmt" } // stand deact
	{ "metal_box_comp.vmt" } // comp deact
	{ "metal_box.vmt" } // st active
	{ "metal_box.vmt" } // dirty deact
	{ "metal_box_comp.vmt" } // comp active
	{ "metal_box.vmt" } // dirty active

	{ "metal_box_bounce.vmt" } // standard deact bounce
	{ "metal_box_speed.vmt" } // standard deact speed

	{ "metal_box_comp_bounce.vmt" } // comp deact bounce
	{ "metal_box_comp_speed.vmt" } // comp speed

	{ "metal_box_bounce.vmt" } // standard active bounce
	{ "metal_box_speed.vmt" } // standard active speed
}
$hboxset "default"
$hbox 0 "polymsh" -19.796  -19.797  -19.795  19.796  19.795  19.795
$surfaceprop "metalpanel"
$keyvalues  { prop_data { "base" "Metal.small"  } } 
$illumposition -0.000 0.000 -0.001
$sequence idle "idle" ACT_IDLE 1 fps 30.00
$collisionmodel "phymodel.smd" {

	$concave
	$mass 40.0
	$inertia 1.00
	$damping 0.10
	$rotdamping 0.00
}
