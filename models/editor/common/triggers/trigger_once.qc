$modelname "props_map_editor/BEE2/logic/trigger_once.mdl"

$bodygroup "Body"
{
	studio "trigger_ref.smd"
}

$renamematerial "trigger" "trigger_once"

$cdmaterials "BEE2/models/props_map_editor/logic/"

$sequence "idle" {
	"trigger_ref.smd"
	fps 30
}
