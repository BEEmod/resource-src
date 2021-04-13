$ModelName "props_map_editor/BEE2/logic/antigel_marker.mdl"

$BodyGroup "Body"
{
	studio "antigel_ref.smd"
}

$Contents "solid"


$CDMaterials "BEE2/models/props_map_editor/"

$Sequence "idle" {
	"antigel_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
