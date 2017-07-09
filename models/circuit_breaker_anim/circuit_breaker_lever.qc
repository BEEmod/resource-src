// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_bts/circuit_breaker_anim.mdl"

$definebone "lights" "" 0 0 0 0 0 0 0 0 0 0 0 0

$bodygroup "default"
{
	studio "circuit_breaker_lever_reference.smd"
}

$cdmaterials "models\props_gameplay"

$surfaceprop "metal"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition -0.328 -1.646 6.873

 $bbox -0.25 -4.646 -1.249 4.24 4.25 14.996

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
//$hboxset "default"
//$hbox 0 "offset" 0 -4.65 -1.25 3.3 4 15
//$hbox 0 "case" 9 -8 -12.2 10 21.36 16.1

$attachment "spr_red" "lights" -0.5 3.2 12.6 absolute
$attachment "spr_green" "lights" -0.5 5.2 12.6 absolute

$attachment "spark_1" "rotation" 2.6 -0.3 8.5 rotate 10.00 87.00 90.00
$attachment "spark_2" "rotation" -2.6 -0.3 8.5 rotate 5.00 94.00 90.00

$sequence "idle_up" "anim/idle_up.smd" {
	fps 24
}

$sequence "idle_down"	"anim/idle_down.smd" {
	fps 24
}

$sequence "flick"	"anim/open_anim.smd" {
	fps 24
	{
	event AE_CL_PLAYSOUND 0 "World.PaintSwitchOpen"
	// Sparks when the lever contacts.
	event AE_CL_CREATE_PARTICLE_EFFECT 13 "env_sparks_omni start_at_attachment spark_1"
	event AE_CL_CREATE_PARTICLE_EFFECT 13 "env_sparks_omni start_at_attachment spark_2"
	}	
}

$sequence "reset"	"anim/close_anim.smd" {
	fps 24
	{
	event AE_CL_PLAYSOUND 0 "World.LightPowerOnSwitch"
	}
}

$sequence "flick_reset"	"anim/press_anim.smd" {
	fps 24
	{
	event AE_CL_PLAYSOUND 0 "World.PaintSwitchOpen" 
	
	// Sparks when the lever contacts.
	event AE_CL_CREATE_PARTICLE_EFFECT 13 "env_sparks_omni start_at_attachment spark_1"
	event AE_CL_CREATE_PARTICLE_EFFECT 13 "env_sparks_omni start_at_attachment spark_2"
	
	// Reset
	event AE_CL_PLAYSOUND 25 "World.LightPowerOnSwitch" 
	}
}

$collisionjoints "circuit_breaker_lever_physics.smd"
{
	$mass 14.6461
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave
}

