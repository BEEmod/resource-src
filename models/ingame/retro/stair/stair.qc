$ModelName "BEE2/props_underground/staircase.mdl"

$BodyGroup "default"
{
	studio "staircase_ref.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "models/props_underground/"
$CDMaterials "models/anim_wp/framework/"
$CDMaterials "BEE2/models/props_underground/"

$CBox 0 0 0 0 0 0

$hboxset "default"

$hbox 0 "stair_1"		     2.00  -16.00  -58.00    12.00  156.00   58.00
$hbox 0 "stair_8"		     2.00 -104.00  -58.00    12.00   11.00   58.00
$hbox 0 "pist_top"		   -12.00    6.04  -28.00    12.00  150.22   28.00
$hbox 0 "pist_bottom"	   -12.00  -56.00  -28.00    12.00    8.00   28.00


$attachment "rotation" "rot" 0 0 0 rotate 0 0 0
$attachment "piston_top" "pist_top" 0 0 0 rotate 0 0 0
$attachment "piston_btm" "pist_bottom" 0 0 0 rotate 0 0 0

$attachment "stair_1" "stair_1" 0 0 0 rotate 0 90 0
$attachment "stair_2" "stair_2" 0 0 0 rotate 0 90 0
$attachment "stair_3" "stair_3" 0 0 0 rotate 0 90 0
$attachment "stair_4" "stair_4" 0 0 0 rotate 0 90 0
$attachment "stair_5" "stair_5" 0 0 0 rotate 0 90 0
$attachment "stair_6" "stair_6" 0 0 0 rotate 0 90 0
$attachment "stair_7" "stair_7" 0 0 0 rotate 0 90 0
$attachment "stair_8" "stair_8" 0 0 0 rotate 0 90 0

$IllumPosition 0 128 -2 rot

$Sequence "idle" {
	"anims\idle.smd"
	fps 30
}

$Sequence "open" {
	"anims\open.smd"
	fps 30
}

// $Sequence "close" {
// 	"anims\close.smd"
// 	fps 30
// }
