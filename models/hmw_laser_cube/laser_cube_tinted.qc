// HMW's laser cube model, found originally in this mappack:
// Under a CC-BY 3.0 license
// https://forums.thinking.withportals.com/community-releases/try-anything-twice-t1997.html
// http://clockworkbrain.net/2015/09/try-anything-twice/

$modelname BEE2/cube_color/hmw_laser_cube.mdl
$scale 0.9

$body mesh "laser_cube.smd"
$lod 32
{
	replacemodel "laser_cube.smd" "laser_cube_L0.smd"
}
$lod 50
{
	replacemodel "laser_cube.smd" "laser_cube_L1.smd"
}

$mostlyopaque
$collisionmodel "laser_cube_cm.smd"
{
	$mass 40
	$inertia 1
	$damping 0.1
	$rotdamping 0

}

$renamematerial "laser_cube" "laser_cube_tint"
$renamematerial "laser_cube_glass" "laser_cube_tint_glass"

$cdmaterials "BEE2/models/cube_color/hmw_laser_cube"
$cdmaterials "BEE2/models/props_p1/hmw_laser_cube"

$texturegroup "skinfamilies" {
	{
		"laser_cube_tint"
		"laser_cube_core"
	}
	{ // Rusty
		"laser_cube_tint"
		"laser_cube_core"
	}
	{
		"laser_cube_tint_bounce"
		"laser_cube_core_bounce"
	}
	{
		"laser_cube_tint_speed"
		"laser_cube_core_speed"
	}
}

$attachment "focus" "joint0" 0 -15 0 rotate 0 -90 0

$surfaceprop "reflective"

$contents "solid"

// $attachment motion_O joint0 0 0 0
// $attachment motion_X joint0 1024 0 0
// $attachment motion_Y joint0 0 1024 0
// $attachment motion_Z joint0 0 0 1024
$sequence idle "laser_cube" fps 1

$keyvalues
{
	prop_data
	{
		base Metal.Medium
	}
}
