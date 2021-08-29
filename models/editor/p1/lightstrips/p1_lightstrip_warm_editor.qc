$modelname "props_map_editor/BEE2/p1/lights/lightstrip_warm.mdl"

$bodygroup "Body"
{
	studio "p1_lightstrip_editor_reference.smd"
}

$surfaceprop "default"

$contents "solid"

$cdmaterials "BEE2/models/props_map_editor/p1/lights"

$renamematerial p1_lightstrip_editor lightstrip_warm

$sequence "idle" {
	"anims/idle.smd"
	activity "ACT_IDLE" 1
}
