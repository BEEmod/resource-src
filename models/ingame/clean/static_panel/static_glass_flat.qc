$staticprop

$ModelName "BEE2/panels/static_glass_flat.mdl"

$BodyGroup "Body"
{
	studio "static_glass_flat_trimmed_ref.smd"
}

$SurfaceProp "glass"

$mostlyopaque

// Constrain the hitbox so it won't render from angles it doesn't need to.
$hbox 0 "static_prop"	   -63.9  -63.9  -10.00    63.9   63.9    -0.1

// Glass, panel arm, backpanels.
$CDMaterials "models/props_ingame" "models/anim_wp" "models/a4_destruction"

$Sequence "idle" {
	"static_glass_flat_ref.smd"
}

$CollisionModel "static_glass_flat_phy.smd"
{
	$mass 1000
}
