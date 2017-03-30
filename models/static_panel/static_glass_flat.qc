$staticprop

$ModelName "BEE2/panels/static_glass_flat.mdl"

$BodyGroup "Body"
{
	studio "static_glass_flat_trimmed_ref.smd"
}
$SurfaceProp "glass"

$mostlyopaque

// Glass, panel arm, backpanels.
$CDMaterials "models/props_ingame" "models/anim_wp" "models/a4_destruction"

$Sequence "idle" {
	"static_glass_flat_ref.smd"
}
