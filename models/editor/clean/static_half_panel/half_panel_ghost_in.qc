$ModelName props_map_editor/bee2_half_panel_ghost_in.mdl

$BodyGroup "Body"
{
	studio half_panel_ghost_in.smd
}

$SurfaceProp "metalpanel"

$Contents "solid"

$CDMaterials "models\props_map_editor"

$CBox 0 0 0 0 0 0

$BBox -64 -64 -63 64 64 65.169


$Sequence "idle" {
	half_panel_ghost_in.smd
	fadein 0.2
	fadeout 0.2
	fps 30
}
