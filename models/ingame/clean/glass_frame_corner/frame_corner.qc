// The original is too small, and has a bad origin.
// Make it aligned to the 64-grid.

$ModelName "BEE2/props_clean/glass_frame_corner.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "frame_corner_reference.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "models\props_lab\"

// This list shows the VMT file names used in the SMD files.
// "window_frame_tc.vmt"

$Sequence "idle" "frame_corner_reference.smd"

$CollisionModel "frame_corner_physics.smd"
{
	$mass 5000
	$concave
	$maxconvexpieces 2
}
