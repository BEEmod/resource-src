$modelname "props_map_editor/BEE2/p1/fizzler/laserfield.mdl"

$bodygroup "Body"
{
	studio "laserfield_ref.smd"
}

$contents "solid"

$cdmaterials "BEE2\models\props_map_editor\p1"

$sequence "idle" {
	"laserfield_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
