// Physics portion by Skotty

$ModelName "anim_wp/room_transform/arm64x64_interior_phys.mdl"

$BodyGroup "default"
{
	studio "arm64x64_interior_phys_reference.smd"
}

$LOD 20
{
	replacemodel "arm64x64_interior_phys_reference.smd" "arm64x64_interior_phys_arm64x64_interior_model.dmx_lod1.smd"
}
$LOD 40
{
	replacemodel "arm64x64_interior_phys_reference.smd" "arm64x64_interior_phys_arm64x64_interior_model.dmx_lod2.smd"
}
$LOD 80
{
	replacemodel "arm64x64_interior_phys_reference.smd" "arm64x64_interior_phys_arm64x64_interior_model.dmx_lod3.smd"
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

$CBox 0 0 0 0 0 0

$BBox -46.232 -32 -68.09 32 32 0


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


	$jointconstrain "arm64x64_export_02" x limit 0 0 0
	$jointconstrain "arm64x64_export_02" y limit 0 0 0
	$jointconstrain "arm64x64_export_02" z limit 0 0 0

	$jointconstrain "arm64x64_export_04_telescope" x limit 0 0 0
	$jointconstrain "arm64x64_export_04_telescope" y limit 0 0 0
	$jointconstrain "arm64x64_export_04_telescope" z limit 0 0 0

	$jointconstrain "arm64x64_export_05" x limit 0 0 0
	$jointconstrain "arm64x64_export_05" y limit 0 0 0
	$jointconstrain "arm64x64_export_05" z limit 0 0 0

	$jointconstrain "arm64x64_export_06" x limit 0 0 0
	$jointconstrain "arm64x64_export_06" y limit 0 0 0
	$jointconstrain "arm64x64_export_06" z limit 0 0 0

	$jointconstrain "arm64x64_export_08" x limit 0 0 0
	$jointconstrain "arm64x64_export_08" y limit 0 0 0
	$jointconstrain "arm64x64_export_08" z limit 0 0 0

	$jointconstrain "arm64x64_export_09" x limit 0 0 0
	$jointconstrain "arm64x64_export_09" y limit 0 0 0
	$jointconstrain "arm64x64_export_09" z limit 0 0 0

	$jointconstrain "arm64x64_export_013" x limit 0 0 0
	$jointconstrain "arm64x64_export_013" y limit 0 0 0
	$jointconstrain "arm64x64_export_013" z limit 0 0 0
}
