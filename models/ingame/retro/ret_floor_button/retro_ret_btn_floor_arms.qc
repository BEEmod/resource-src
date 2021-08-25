
$ModelName "BEE2/props_underground\ret_btn_floor_arms.mdl"

$BodyGroup "Body"
{
	studio "retro_ret_btn_floor_arms.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "models/props_underground/"
$CDMaterials "models/anim_wp/framework/"

$attachment "neg" "rot_pos" 0 0 -64
$attachment "pos" "rot_neg" 0 0 64

// Illuminate above the floor so it's nice and bright
$illumposition 0 0 8

$Sequence "idle" "anims/idle.smd" {
}
$Sequence "open" "anims/open.smd" {
	fps 60
	{ event AE_CL_PLAYSOUND 30 "World.a3JumpIntroPlatformArrive" }
}
$Sequence "close" "anims/close.smd" {
	fps 60
	{ event AE_CL_PLAYSOUND 30 "World.a3JumpIntroPlatformArrive" }
}
