$ModelName "BEE2/props_underground/covered_panel.mdl"

$BodyGroup "Body"
{
	studio "under_covered_panel.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "models/props_underground/" 
$CDMaterials "models/anim_wp/framework/"
$CDMaterials "BEE2/models/props_underground/"
$CDMaterials "BEE2/models/props_p1/"


$TextureGroup "skinfamilies" {
	{ "wood_panel_128x256_01" }
	{ "underground_plywood_01a_bottom" }
	{ "metalwall_wire" }
}

$attachment "panel_attach"  "rot"           0 64 0
$illumposition 0 64 -8 "rot"

$sequence "BindPose" "anims/BindPose.smd"

$sequence "parent_pose" {
	"anims/idle.smd"
	fps 30
}

$sequence "ramp_30_deg_open" {
	"anims/open_30.smd"
	fps 45
}

$sequence "ramp_45_deg_open" {
	"anims/open_45.smd"
	fps 45
}

$sequence "ramp_60_deg_open" {
	"anims/open_60.smd"
	fps 45
}

$sequence "ramp_90_deg_open" {
	"anims/open_90.smd"
	fps 45
}
