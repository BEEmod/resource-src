$modelname "BEE2/props_p1/p1_piston_mid.mdl"

$staticprop

$bodygroup "default"
{
	studio "p1_piston_mid_reference.smd"
}

$renamematerial metal_lift001 metal_lift
$renamematerial metalwall_bts_005a metalwall_bts_5

$surfaceprop "default"

$contents "solid"

$cdmaterials "BEE2/models/props_p1"

$sequence "BindPose" {
	"anims\BindPose.smd"
}
