$modelname "BEE2/props_clean/indicator_panel.mdl"

$BodyGroup "base"
{
	studio "base_ref.smd"
}
$BodyGroup "dial"
{
	studio "slice_solid_ref.smd"
	studio "slice1_ref.smd"
	studio "slice2_ref.smd"
	studio "slice3_ref.smd"
	studio "slice4_ref.smd"
	studio "slice5_ref.smd"
	studio "slice6_ref.smd"
	studio "slice7_ref.smd"
	studio "slice8_ref.smd"
	studio "slice_fade_ref.smd"
	blank
}

$texturegroup "skinfamilies" {
	{ "bg_blue" }
	{ "bg_oran" }
}

$cdmaterials "BEE2/models/props_clean/indicator/"

$SurfaceProp "glass"

$Contents "solid"

$IllumPosition 0 0 -8

$Sequence "idle" {
	"base_ref.smd"
	fps 1
}
