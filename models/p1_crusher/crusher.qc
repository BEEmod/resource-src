$modelname "BEE2/props_p1/crusher.mdl"

$staticprop

$BodyGroup "Body"
{
	studio "crusher_ref.smd"
}

$lod 60
{
	replacemodel "crusher_ref.smd" "crusher_lod1.smd"
}

$cdmaterials "BEE2/models/props_p1/"

$surfaceprop "concrete"

$collisionmodel "crusher_phy.smd"  {
	$mass 1000
	$concave
}

$sequence BindPose "crusher_ref.smd"
