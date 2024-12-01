// For some reason portals don't clip properly unless we use a model.

$staticprop
$surfaceprop glass
$opaque


$ModelName "BEE2/panels/static_phys_glass_top.mdl"

$BodyGroup "Body"
	{
	studio "panel_clip_ref.smd"
	}

// The editor is always loaded, use a material from there.
$CDMaterials "models/props_map_editor/"

$opaque
$origin 48 0 12

$Sequence "idle" "panel_clip_ref.smd"

$collisionmodel "panel_clip_top_phy.smd" {
	$mass 200
}
