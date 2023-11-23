$modelname "props_map_editor/BEE2/p1/fizzler/portal.mdl"

$bodygroup "Body"
{
	studio "fizz_portal_ref.smd"
}

$contents "solid"

$cdmaterials "BEE2\models\props_map_editor\p1"

$sequence "idle" {
	"fizz_portal_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
