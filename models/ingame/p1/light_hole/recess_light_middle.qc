$modelname "BEE2/props_p1/recess_light_middle"
$body "Body" "recess_light_middle_ref"
$sequence idle "recess_light_edge_ref"

$renamematerial "concrete_bts_modular_wall001a" "conc_white"
$renamematerial "white" "light_white"
$renamematerial "squarebeams" "invis"

$texturegroup skinfamilies {
	{ "light_white"  "conc_white"  }
	{ "light_orange" "conc_orange" }
	{ "light_black"  "conc_black"  }
	{ "light_blue"   "conc_blue"   }
}

$include "light_hole_real_common.qci"
