$modelname "BEE2/props_p1/light_hole_small"
$body "Body" "light_hole_small_ref"
$sequence idle "light_hole_small_ref"

$renamematerial "wall_white" "metalwall_gradient_cool"
$renamematerial "white" "light_cool"
$renamematerial "squarebeams" "invis"

$bbox -16 -16 -48 16 16 8

$include "light_hole_real_common.qci"
