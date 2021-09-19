$modelname "BEE2/props_ingame/crusher_head_224.mdl"

$staticprop

$bodygroup "default"
{
	studio "crusher_head_224_reference.smd"
}

$lod 40
{
	replacemodel "crusher_head_224_reference.smd" "crusher_head_224_lod1.smd"
}
$lod 80
{
	replacemodel "crusher_head_224_reference.smd" "crusher_head_224_lod2.smd"
}

// Add dirty skin, for overgrown etc.
$texturegroup "skinfamilies" {
	{ "crusher" }
	{ "crusher_rusty" }
}

$cdmaterials "models/anim_wp/crusher" "BEE2/models/props_ingame/"

// Model uses material "models\anim_wp\crusher\crusher.vmt"

$surfaceprop "default"

$contents "solid"

$sequence "BindPose" {
	"crusher_head_anims/idle.smd" 
}

