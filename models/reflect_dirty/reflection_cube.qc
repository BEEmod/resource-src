// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/reflection_cube_rusty.mdl"

$bodygroup "Body"
{
	studio "reflection_cube_reference.smd"
}

$lod 40
{
	replacemodel "reflection_cube_reference.smd" "reflection_cube_reference_lod1.smd"
}
$lod 60
{
	replacemodel "reflection_cube_reference.smd" "reflection_cube_reference_lod2.smd"
}
$lod 90
{
	replacemodel "reflection_cube_reference.smd" "reflection_cube_reference_lod3.smd"
}

$cdmaterials ""

$mostlyopaque

$texturegroup "skinfamilies"
{
	{
		"models/props/reflecto_cube_shell_rusted.vmt"
	}
	{
		"models/props/reflecto_cube_shell_rusted.vmt"
	}
	{
		"BEE2/models/props_ingame/reflecto_cube_dirty_bounce.vmt"
	}
	{
		"BEE2/models/props_ingame/reflecto_cube_dirty_speed.vmt"
	}
	// {
		// "reflecto_cube_shell_schrodinger.vmt"
	// }
	// {
		// "reflecto_cube_shell_schrodinger_bounce.vmt"
	// }
	// {
		// "reflecto_cube_shell_schrodinger_speed.vmt"
	// }
}

// Model uses material "reflecto_cube_shell.vmt"
// Model uses material "reflecto_cube_glass.vmt"
// Model uses material "reflecto_cube_shell_rusted.vmt"
// Model uses material "reflecto_cube_shell_bounce.vmt"
// Model uses material "reflecto_cube_shell_speed.vmt"
// Model uses material "reflecto_cube_shell_schrodinger.vmt"
// Model uses material "reflecto_cube_shell_schrodinger_bounce.vmt"
// Model uses material "reflecto_cube_shell_schrodinger_speed.vmt"

$attachment "focus" "polymsh70" 0 0 20 rotate 0 0 0

$surfaceprop "reflective"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 -1.246 0

// $bbox -17.97 -18.275 -18.275 20.746 18.275 18.275

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "polymsh70" -18.171635 -18.171638 -17.970179 18.171635 18.171638 20.462366




$sequence "idle" "reflection_cube_anims\idle.smd" {
	fps 30
}

$collisionmodel "reflection_cube_physics.smd"
{
	$mass 40
	$inertia 1
	$damping 0.1
	$rotdamping 0

}


$keyvalues
{
	prop_data 
	{
		"base" "Metal.small"
	}
}
