// Combine all the props to simplify this.

$ModelName "BEE2/props_clean/coop_checkpoint_sep_glass.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "check_sep_frame_ref.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "models\props_lab\"

$Sequence "idle" "check_sep_frame_ref.smd"

$CollisionModel "check_sep_frame_phy.smd"
{
	$mass 5000
	$concave
	$maxconvexpieces 24
}
