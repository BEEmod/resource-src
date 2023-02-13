// For some reason portals don't clip properly unless we use a model.

$staticprop
$surfaceprop metalgrate
$opaque


$ModelName "BEE2/panels/static_phys.mdl"

$BodyGroup "Body"
	{
	studio "panel_clip_ref.smd"
	}

$CDMaterials "models/anim_wp"

$opaque
$origin 16 0 -16

$Sequence "idle" "panel_clip_ref.smd"

$collisionmodel "panel_clip_phy.smd" {
	$mass 1000
}
