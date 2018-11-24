$ModelName props_map_editor/bee2_half_panel_ghost_out.mdl

$BodyGroup "Body"
{
	studio half_panel_ghost_out.smd
}

$SurfaceProp "metalpanel"

$Contents "solid"

$CDMaterials "models\props_map_editor"

$CBox 0 0 0 0 0 0

$BBox -64 -64 -63 64 64 65.169


$Sequence "idle" {
	half_panel_ghost_out.smd
	fadein 0.2
	fadeout 0.2
	fps 30
}
