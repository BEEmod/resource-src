// Created by Crowbar 0.44.0.0
$staticprop

$modelname "BEE2/props_clean/panel_pist_plat.mdl"

$bodygroup "Body"
{
	studio "panel_pist_plat_ref.smd"
}

$sequence "idle" "panel_pist_plat_ref.smd"

$surfaceprop "metalpanel"

$contents "solid"

$cdmaterials "BEE2/models/props_overgrown/"
$cdmaterials "models/anim_wp/arm_interior_192/"
$cdmaterials "models/anim_wp/framework/"
$cdmaterials "models/a4_destruction/" //Backpanels

$texturegroup "skinfamilies" {
	{
		"arm_interior_192_bose"
		"arm_motionplatform"
		"squarebeams_main"
		"backpanels_vtx"
	}
	{
		"arm_interior_192_bose_rusty"
		"arm_motionplatform_rusty"
		"squarebeams_skin2"
		"metalwall_bts_006a"
	}
}

$CollisionModel "panel_pist_plat_phy.smd"
{
	$mass 1000
	$concave
}
