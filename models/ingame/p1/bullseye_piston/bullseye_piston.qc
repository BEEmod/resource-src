$ModelName "BEE2/props_p1/bullseye_piston.mdl"

$bodygroup "body"
{
	studio "bullseye_piston_ref.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "BEE2/models/props_p1/"

$Sequence "idle_extended" {
	"anims/idle.smd"
	snap
	fps 30
}

$attachment "pist1" "tip_1" 0 0 0 rotate 0 0 0
$attachment "pist2" "tip_2" 0 0 0 rotate 0 0 0
$attachment "pist3" "tip_3" 0 0 0 rotate 0 0 0
$attachment "pist4" "tip_4" 0 0 0 rotate 0 0 0

$Sequence "extend" {
	"anims/extend.smd"
	{ event AE_CL_PLAYSOUND 9 "BEE2.P1.stair_clack" }
	{ event AE_CL_PLAYSOUND 13 "BEE2.P1.stair_clack" }
	{ event AE_CL_PLAYSOUND 20 "BEE2.P1.stair_clack" }
	{ event AE_CL_PLAYSOUND 22 "BEE2.P1.stair_clack" }
	fps 30
}

$Sequence "idle_retracted" {
	"anims/retract_idle.smd"
	snap
	fps 30
}
