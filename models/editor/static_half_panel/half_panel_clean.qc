// Created by Crowbar 0.36.0.0

$ModelName "props_map_editor/bee2_half_panel_clean.mdl"

$BodyGroup "Body"
{
	studio "half_panel_clean.smd"
}


$SurfaceProp "metalpanel"

$Contents "solid"

$MostlyOpaque

$CDMaterials "models\props_map_editor"

$CBox 0 0 0 0 0 0

$BBox -64 -64 -63 64 64 65.169


$Sequence "idle" {
	"half_panel_clean.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
