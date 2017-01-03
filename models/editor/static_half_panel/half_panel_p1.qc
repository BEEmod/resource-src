$ModelName "props_map_editor/bee2_half_panel_p1.mdl"

$BodyGroup "Body"
{
	studio "half_panel_p1.smd"
}

$Contents "solid"

$MostlyOpaque

$CDMaterials "BEE2/models/props_map_editor"

$CBox 0 0 0 0 0 0

$BBox -64 -64 -63 64 64 64

$Sequence "idle" {
	"half_panel_p1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
