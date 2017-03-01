$ModelName "BEE2/props_underground/covered_panel.mdl"

$BodyGroup "Body"
{
	studio "under_covered_panel.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "models/props_underground/" "models/anim_wp/framework/"

$attachment "panel_attach"  "rot"           0 64 0
$attachment "piston"        "piston"        0  0 0
$attachment "piston_end"    "piston_end"    0  0 0
$attachment "marker"        "marker"        0  0 0

$sequence "idle" {
	"anim/idle.smd"
	fps 30
}

$sequence "close_30" {
	"anim/close_30.smd"
	fps 30
	{ event AE_CL_PLAYSOUND 0 "World.a3EndElevatorArrive" }
}

$sequence "close_45" {
	"anim/close_45.smd"
	fps 30
	{ event AE_CL_PLAYSOUND 0 "World.a3EndElevatorArrive" }
}

$sequence "close_60" {
	"anim/close_60.smd"
	fps 30
	{ event AE_CL_PLAYSOUND 0 "World.a3EndElevatorArrive" }
}

$sequence "close_90" {
	"anim/close_90.smd"
	fps 30
	{ event AE_CL_PLAYSOUND 0 "World.a3EndElevatorArrive" }
}

$sequence "idle_30" {
	"anim/idle_30.smd"
	fps 30
}

$sequence "idle_45" {
	"anim/idle_45.smd"
	fps 30
}

$sequence "idle_60" {
	"anim/idle_60.smd"
	fps 30
}

$sequence "idle_90" {
	"anim/idle_90.smd"
	fps 30
}

$sequence "open_30" {
	"anim/open_30.smd"
	fps 30
	{ event AE_CL_PLAYSOUND 0 "World.a3EndElevatorArrive" }
}

$sequence "open_45" {
	"anim/open_45.smd"
	fps 30
	{ event AE_CL_PLAYSOUND 0 "World.a3EndElevatorArrive" }
}

$sequence "open_60" {
	"anim/open_60.smd"
	fps 30
	{ event AE_CL_PLAYSOUND 0 "World.a3EndElevatorArrive" }
}

$sequence "open_90" {
	"anim/open_90.smd"
	fps 30
	{ event AE_CL_PLAYSOUND 0 "World.a3EndElevatorArrive" }
}
