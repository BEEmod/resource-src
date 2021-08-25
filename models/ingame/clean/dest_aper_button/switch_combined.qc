// Created by Crowbar 0.36.0.0

$ModelName "dest_ap/port_button.mdl"

$BodyGroup "Body"
{
	studio "switch_main_ref.smd"
}

$BodyGroup "Button"
{
	studio "switch_top_frm0.smd"
	studio "switch_top_frm1.smd"
	studio "switch_top_frm2.smd"
	studio "switch_top_frm3.smd"
	studio "switch_top_frm4.smd"
}

$LOD 15
{
	replacemodel "switch_main_ref.smd" "switch_main_lod1.smd"
	replacemodel "switch_top_frm0.smd" "switch_top_lod1_frm0.smd"
	replacemodel "switch_top_frm1.smd" "switch_top_lod1_frm1.smd"
	replacemodel "switch_top_frm2.smd" "switch_top_lod1_frm2.smd"
	replacemodel "switch_top_frm3.smd" "switch_top_lod1_frm3.smd"
	replacemodel "switch_top_frm4.smd" "switch_top_lod1_frm4.smd"
}
$LOD 35
{
	replacemodel "switch_main_ref.smd" "switch_main_lod2.smd"
	replacemodel "switch_top_frm0.smd" "switch_top_lod2_frm0.smd"
	replacemodel "switch_top_frm1.smd" "switch_top_lod2_frm1.smd"
	replacemodel "switch_top_frm2.smd" "switch_top_lod2_frm2.smd"
	replacemodel "switch_top_frm3.smd" "switch_top_lod2_frm3.smd"
	replacemodel "switch_top_frm4.smd" "switch_top_lod2_frm4.smd"
}

$SurfaceProp "metal_box"

$Contents "solid"

$CDMaterials "models/props/"  // Button skin
$CDMaterials "models/anim_wp/framework/" // Squarebeams
$CDMaterials "models/dest_ap/port_button/" // Other stuff

$TextureGroup "skinfamilies"
{
	{
	"switch_skin002"
	"black_tile_dirty"
	"squarebeams_skin2"
	}
	{
	"switch_rusty_bounce"
	"black_tile_dirty_bounce"
	"squarebeams_rusty_bounce"
	}
	{
	"switch_rusty_speed"
	"black_tile_dirty_speed"
	"squarebeams_rusty_speed"
	}
}

$CBox 0 0 0 0 0 0

$BBox -12 -12 -0.255 12 12 47.086

$Sequence "idle" {
	"switch001_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "switch_physics.smd"
{
	$mass 40
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
}


$keyvalues
{
	prop_data
	{
		base Metal.small
		blockLOS 0
		allowStatic 1
	}
	physgun_interactions
	{
	 	preferred_carryangles "20 180 0"
	}
}
