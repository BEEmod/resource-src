$modelname "BEE2/props_ingame/crusher.mdl"

$bodygroup "default"
{
	studio "crusher_reference.smd"
}

$lod 50
{
	replacemodel "crusher_reference.smd" "crusher_lod1.smd"
}
$lod 100
{
	replacemodel "crusher_reference.smd" "crusher_lod2.smd"
}

// Add dirty skin, for overgrown etc.
$texturegroup "skinfamilies"
{
	{
		"arm_interior_192_bose"
		"straight_piston"
		"crusher"
	}
	{
		"arm_interior_192_bose_rusty"
		"straight_piston_rusty"
		"crusher_rusty"
	}
}

$cdmaterials "models/anim_wp/arm_interior_192" "models/props_bts" "models/anim_wp/crusher" "BEE2/models/props_ingame/"

// Model uses material "models\anim_wp\arm_interior_192\arm_interior_192_bose.vmt"
// Model uses material "models\props_bts\straight_piston.vmt"
// Model uses material "models\anim_wp\crusher\crusher.vmt"

$attachment "base_attach" "base_Zrot" 0 -47.83 -0.12 rotate 0 0 0

// Added..
$attachment "head_attach" "paneltop_rotX" 0 28 36 rotate 0 0 0

// Set the origin to the actual center of the plate...
$origin 0 -100 -141

$surfaceprop "default"

$contents "solid"

$sectionframes 30 199

$sequence "BindPose" {
	"crusher_anims\BindPose.smd"
	fps 30
}

$sequence "smash_idle" {
	"crusher_anims\smash_idle.smd"
	fps 24
	loop
}

$sequence "retract" {
	"crusher_anims\smash_out.smd"
	fps 24
	{ event AE_CL_PLAYSOUND 16 "World.CrusherSeparate" }
	{ event AE_CL_PLAYSOUND 4 "World.CrusherOpen" }
	{ event AE_CL_PLAYSOUND 50 "World.RobotImpactLgCrusher" }
}

$sequence "extend" {
	"crusher_anims\smash_in.smd"
	fps 24
	{ event AE_CL_PLAYSOUND 0 "World.SlowCrusherCloseStart" }
	{ event AE_CL_PLAYSOUND 10 "World.MpCoopTbeamMazeCrusherImpact" }
}

// Used for Old Aperture sound FX..

$sequence "retract_retro_snd" {
	"crusher_anims\smash_out.smd"
	fps 24
	{ event AE_CL_PLAYSOUND 50 "World.RatMazeDownStop" }
}

$sequence "extend_retro_snd" {
	"crusher_anims\smash_in.smd"
	fps 24
	{ event AE_CL_PLAYSOUND 0 "World.RobotAirRelease" }
	{ event AE_CL_PLAYSOUND 1 "Doors.FullClose2" }
	{ event AE_CL_PLAYSOUND 14 "World.MpCoopTbeamMazeCrusherImpact" }
}

// P1 sound FX...

$sequence "retract_p1_snd" {
	"crusher_anims\smash_out.smd"
	fps 24
	{ event AE_CL_PLAYSOUND 0 "World.RatMazeUpTravel" }
	{ event AE_CL_PLAYSOUND 50 "BEE2.p1.hall_stop" }
}

$sequence "extend_p1_snd" {
	"crusher_anims\smash_in.smd"
	fps 24
	{ event AE_CL_PLAYSOUND 0 "BEE2.p1.hall_move" }
	{ event AE_CL_PLAYSOUND 14 "BEE2.p1.hall_stop" }
	{ event AE_CL_PLAYSOUND 16 "World.MpCoopTbeamMazeCrusherImpact" }
}

