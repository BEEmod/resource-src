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

$cdmaterials "models/anim_wp/arm_interior_192/"
$cdmaterials "models/anim_wp/framework/"
$cdmaterials "models/a4_destruction/" //Backpanels

$CollisionModel "panel_pist_plat_phy.smd"
{
	$mass 1000
	$concave
}
