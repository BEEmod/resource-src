$staticprop
$ModelName "anim_wp/room_transform/arm_64x64_justtop_glass_trans.mdl"

$BodyGroup "default"
{
	studio "telescope_arm_toponly_ref.smd"
}

$LOD 50
{
	replacemodel "telescope_arm_toponly_ref.smd" "telescope_arm_toponly_lod1.smd"
}

$SurfaceProp "glass"

$Contents "solid"

$MostlyOpaque

$CDMaterials "models\anim_wp\circle_shield"

$TextureGroup "skinfamilies"
{
	{ "circle_shield_main"  }
	{ "circle_shield_red" }
}

$Sequence "BindPose" {
	"telescope_arm_toponly_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
