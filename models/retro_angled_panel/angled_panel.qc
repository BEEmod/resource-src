// Created by Crowbar 0.55

$ModelName "BEE2/props_underground/angled_panel.mdl"

$BodyGroup "default"
{
	studio "rot_panel_ref.smd"
}

$SurfaceProp "default"

$Contents "solid"

// $IllumPosition 0 130.75 16

$CDMaterials "models/props_underground"
$CDMaterials "models/anim_wp/framework"

$CBox 0 0 0 0 0 0

$attachment "panel_attach" "rot" 0 64 0 rotate 0 0 0
$attachment "pist_top" "pist_top" 0 0 0 rotate 0 0 0
$attachment "pist_btm" "pist_bottom" 0 0 0 rotate 0 0 0

//$BBox -321.25 -28 -12 58.5 28 44

// Static position:
// nodes
// 0 "root" -1
// 1 "rot" 0
// 2 "pist_bottom" 0
// 3 "pist_top" 1
// end
// skeleton
// time 0
// 0  0.000000 0.000000 0.000000  1.570796 0.000000 0.000000
// 1  64.000000 0.000000 0.000000  -1.570796 1.570796 0.000000
// 2  -8.000000 -64.000000 0.000000  0.000000 -0.000000 -0
// 3  0.000001 72.000008 -7.000000  -1.570796 0 -1.570796
// end

$Sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "open_90" {
	"anims\open_90.smd"
	fadein 0.2
	fadeout 0.2
	fps 60
}

