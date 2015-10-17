// Created by Crowbar 0.19.0.0

$modelname "bee2/p1_pgun.mdl"

$cdmaterials "bee2/models/p1_pgun/"

$bodygroup "studio"
{
	studio "p1_pgun.smd"
}


$definebone "valvebiped.portalgun_reference" "ValveBiped.Base" 0.000000 0.000000 0.000000 -1.570796 0.000000 0.000000

$texturegroup "skinfamilies"
{
	{
		"v_portalgun.vmt"
	}
	{
		"v_portalgun.vmt"
	}
	{
		"v_portalgun.vmt"
	}
}


// Model uses material "v_hands.vmt"
// Model uses material "v_portalgun.vmt"
// Model uses material "v_portalgun_glass.vmt"


$attachment "muzzle" "ValveBiped.Front_Cover" 0 2.2 2.8 rotate -90 0 0
$attachment "Arm1_attach1" "ValveBiped.Arm1_A" 0 0 0 rotate 0 0 0
$attachment "Arm1_attach2" "ValveBiped.Arm1_B" 0 0.2 -0.1 rotate 0 0 0
$attachment "Arm1_attach3" "ValveBiped.Arm1_C" -1.25 0.1 1.06 rotate 0 0 0
$attachment "Arm2_attach1" "ValveBiped.Arm2_A" 0 0 0 rotate 0 0 0
$attachment "Arm2_attach2" "ValveBiped.Arm2_B" 0 0.2 -0.1 rotate 0 0 0
$attachment "Arm2_attach3" "ValveBiped.Arm2_C" 0.1 -1.25 1 rotate 0 0 0
$attachment "Arm3_attach1" "ValveBiped.Arm3_A" 0 0 -0.3 rotate 0 0 0
$attachment "Arm3_attach2" "ValveBiped.Arm3_B" -0.1 0.3 -0.1 rotate 0 0 0
$attachment "Arm3_attach3" "ValveBiped.Arm3_C" -0.1 -1.25 1.05 rotate 0 0 0
$attachment "Body_light" "ValveBiped.Base" 0.25 5.45 10.5 rotate 0 0 0
$attachment "Beam_point1" "ValveBiped.Front_Cover" 0.01 2.4 -3.1 rotate 0 0 0
$attachment "Beam_point2" "ValveBiped.Front_Cover" -0.01 2.39 -3.4 rotate 0 0 0
$attachment "Beam_point3" "ValveBiped.Front_Cover" -0.03 2.38 -3.7 rotate 0 0 0
$attachment "Beam_point4" "ValveBiped.Front_Cover" -0.04 2.36 -4 rotate 0 0 0
$attachment "Beam_point5" "ValveBiped.Front_Cover" -0.05 2.35 -4.3 rotate 0 0 0
$attachment "Inside_effects" "ValveBiped.Front_Cover" 0 2.2 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"

$sectionframes 30 179

$mostlyopaque

$sequence "fire1" "p1_pgun_anims\fire1.smd" {
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	snap
	node "Fire"
	{ event AE_MUZZLEFLASH 0 "COMBINE MUZZLE" }
}

$sequence "fizzle" "p1_pgun_anims\fizzle.smd" {
	fps 30
	"ACT_VM_FIZZLE" 1
	snap
	node "Ready"
}

$sequence "draw" "p1_pgun_anims\draw.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
	node "Ready"
}

$sequence "holster" "p1_pgun_anims\holster.smd" {
	fps 30
	"ACT_VM_HOLSTER" 1
	node "Ready"
}

$sequence "idletolow" "p1_pgun_anims\idletolow.smd" {
	fps 30
	"ACT_VM_LOWERED_TO_IDLE" 1
	transition "Ready" "Low"
}

$sequence "lowtoidle" "p1_pgun_anims\lowtoidle.smd" {
	fps 30
	"ACT_VM_IDLE_TO_LOWERED" 1
	transition "Low" "Ready"
}

$sequence "lowidle" "p1_pgun_anims\lowidle.smd" {
	fps 30
	"ACT_VM_IDLE_LOWERED" 1
	loop
	node "Low"
}

// Dryfire = +USE fail
// In Portal 1 no animation plays
$sequence "dryfire" "p1_pgun_anims\pickup_fail.smd" { 
	fps 30
	"ACT_VM_DRYFIRE" 1
	snap
	node "Ready"
}

$sequence "idle" "p1_pgun_anims\idle.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	loop
	node "Ready"
}

$sequence "idle_layer" "p1_pgun_anims\idle.smd" {
	fps 30
	loop
	realtime
}

$sequence "idle_to_carrying" "p1_pgun_anims\pickup.smd" {
	fps 30
	"ACT_VM_PICKUP" 1
	node "Fire"
}

// New animation
$sequence "idle_carrying" "p1_pgun_anims\pickup_idle.smd" {
	fps 30
	"ACT_VM_PICKUP_IDLE" 1
	loop
}

$sequence "carrying_to_idle" "p1_pgun_anims\release.smd" {
	fps 30
	"ACT_VM_RELEASE" 1
	node "Fire"
}

// No special animation for this!
$sequence "end_draw" "p1_pgun_anims\draw.smd" {
	fps 30
	"ACT_VM_END_DRAW" 1
	snap
	node "Ready"
}

