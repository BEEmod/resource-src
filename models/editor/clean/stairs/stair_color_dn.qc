// Altered to allow for portalable stairs, show the underlying panels.

$modelname "props_map_editor/BEE2/clean/stairs_retracted.mdl"

$staticprop

$bodygroup "body"
{
	studio "stair_color_dn_ref.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 -61.852 0.898

$cdmaterials "models\props_map_editor"

$sequence "ref" {
	"stair_color_dn_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
