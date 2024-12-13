$staticprop

$ModelName "BEE2/panels/dyn_coll_90.mdl"

$BodyGroup "Body"
{
	studio "panel_clip_centre_ref.smd"
}

// The editor is always loaded, use a material from there.
$CDMaterials "models/props_map_editor/"
$surfaceprop "metalpanel"

$Sequence "idle" {
	"idle.smd"
}

$collisionmodel "dyn_coll_90" {
	$mass 500
	$concave
}
