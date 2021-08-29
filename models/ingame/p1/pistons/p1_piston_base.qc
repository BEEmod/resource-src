$modelname "BEE2/props_p1/p1_piston_base.mdl"

$staticprop

$bodygroup "default"
{
	studio "p1_piston_base_reference.smd"
}

$renamematerial metal_lift001 metal_lift
$renamematerial metalwall_bts_005a metalwall_bts_5

$surfaceprop "default"

$contents "solid"

$cdmaterials "BEE2/models/props_p1"

$texturegroup "skinfamilies"
{
	{ "metal_lift"       }
	{ "metal_lift_gradient" }
}

$sequence "BindPose" {
	"anims\BindPose.smd"
}
