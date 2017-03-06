// Physics portion by Skotty

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

$SurfaceProp "metalgrate"

$Contents "solid"

$MaxEyeDeflection 90

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

$BBox -48 -32 -70 32 32 0


$Sequence "BindPose" {
	"arm64x64_interior_phys_anims\BindPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$IncludeModel "anim_wp/room_transform/arm64x64_interior_animation.mdl"

$CollisionJoints "arm64x64_interior_phys_physics.smd"
{
	$mass 200
	$inertia 1
	$damping 0
	$rotdamping 0

}
