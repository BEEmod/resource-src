// For some reason portals don't clip properly unless we use a model.

$staticprop
$surfaceprop metalgrate
$opaque


$ModelName "BEE2/panels/static_phys_arms.mdl"

$BodyGroup "Body"
	{
	studio "panel_clip_ref.smd"
	}

// The editor is always loaded, use a material from there.
$CDMaterials "models/props_map_editor/"

$opaque
$origin 16 0 -16

$Sequence "idle" "panel_clip_ref.smd"

$collisionmodel "panel_clip_wedge_phy.smd" {
	$mass 1000
}
