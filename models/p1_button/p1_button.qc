// Created by Crowbar 0.19.0.0

$modelname "props_ingame/p1_floor_button.mdl"

$bodygroup "default"
{
	studio "p1_button.smd"
}

// $lod 20
// {
	// replacemodel "p1_button.smd" "p1_button_lod1.smd"
// }
// $lod 30
// {
	// replacemodel "p1_button.smd" "p1_button_lod2.smd"
// }
// $lod 100
// {
	// replacemodel "p1_button.smd" "p1_button_lod3.smd"
// }

$cdmaterials "models\props_ingame\p1_button"

$texturegroup "skinfamilies"
{
	{
		"button.vmt"
	}
	{
		"button.vmt"
	}
}
$attachment "attach23" "portal_button_top" -0.00 -0.00 0.00 rotate -90.00 -90.00 0.00

$surfaceprop "default"

//$contents "solid"

$sequence "BindPose" "portal_button_anims\BindPose.smd" {
	fps 24
}

 $sequence "up" "portal_button_anims\up.smd" {
	 fps 24
	 { 
		 event AE_CL_PLAYSOUND 0 "p1/btn_up.wav" 
	 }
 }

$sequence "idledown" "portal_button_anims\idledown.smd" {
	fps 24
}

$sequence "down" "portal_button_anims\down.smd" {
	fps 24
	{
		event AE_CL_PLAYSOUND 0 "p1/btn_down.wav"
	}
}

// $collisionjoints "portal_button_physics.smd"
 // {
	// $mass 1967.366
	// $inertia 1
	// $damping 0
	// $rotdamping 0


	// $jointconstrain "button_top" x limit 0 0 0
	// $jointconstrain "button_top" y limit 0 0 0
	// $jointconstrain "button_top" z limit 0 0 0
// }

