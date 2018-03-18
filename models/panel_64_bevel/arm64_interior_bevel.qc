// Arm_interior, with sides beveled to not stick out.

$ModelName "BEE2/panels/arm64_bevel.mdl"

$BodyGroup "default"
{
	studio "arm64_interior_bevel_ref.smd"
}

$LOD 20
{
	replacemodel "arm64_interior_bevel_ref.smd" "arm64_interior_bevel_lod1.smd"
}
$LOD 40
{
	replacemodel "arm64_interior_bevel_ref.smd" "arm64_interior_bevel_lod2.smd"
}
$LOD 80
{
	replacemodel "arm64_interior_bevel_ref.smd" "arm64_interior_bevel_lod3.smd"
}


$CDMaterials "models/anim_wp/"

$TextureGroup "skinfamilies"
{
	{ "arm_64x64"             }
	{ "arm_64x64_off"         }
	{ "arm_64x64_error"       }
	{ "arm_64x64_rusty"       }
	{ "arm_64x64_rusty_off"   }
	{ "arm_64x64_rusty_error" }
}

$Attachment "panel_attach" "arm64x64_export_013" 0 -1 0 rotate -90 0 0

// $Sequence "BindPose" {
	// "anims\bevel_bindpose.smd"
	// fadein 0.2
	// fadeout 0.2
	// fps 30
// }

$IncludeModel "anim_wp/room_transform/arm64x64_interior_animation.mdl"
