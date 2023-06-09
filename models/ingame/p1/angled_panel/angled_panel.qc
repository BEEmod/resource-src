// Animates a P1 panel to match the PeTI angles.

$modelname "BEE2/props_p1/angled_panel.mdl"

$BodyGroup "panel"
{
	studio "angled_panel_bevel_ref.smd"
}

$BodyGroup "piston" 
{
	studio "angled_panel_left_ref.smd"
	studio "angled_panel_right_ref.smd"
}

$cdmaterials "BEE2/models/props_p1/"
$surfaceprop "plastic_box"

$attachment "panel_attach" "panel" 0 64 0 rotate 0 90 0
$attachment "piston" "piston" 0 16 0 rotate 0 0 270
$illumposition 0 64 -8 "panel"

$sequence "idle" {
	"anims/BindPose.smd"
	fps 30
}

$sequence "ramp_30_deg_open" {
	"anims/open_30.smd"
	fps 30
}

$sequence "ramp_45_deg_open" {
	"anims/open_45.smd"
	fps 30
}

$sequence "ramp_60_deg_open" {
	"anims/open_60.smd"
	fps 30
}

$sequence "ramp_90_deg_open" {
	"anims/open_90.smd"
	fps 30
}

// Customised for the prop.
$hboxset "default"
$hbox 0 "base"	   -12   -0  -12    12   70   12
$hbox 0 "piston"    -8  -72   -8     8   4    8
$hbox 0 "rotate"   -42  -16  -16    42   16   20
$hbox 0 "panel"	   -64   -0  -12    64  128    0

// $collisionjoints "angled_panel_phy"  {
// 	$concaveperjoint
// 	$mass 250
// }
