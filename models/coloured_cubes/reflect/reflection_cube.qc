// Created by Crowbar 0.19.0.0

$modelname "BEE2/cube_color/clean_reflect.mdl"

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

$mostlyopaque

$cdmaterials "BEE2/models/cube_color/" "models/props"

// Use the original glass, it doesn't seem actually obey rendercolor
// Which is good.

$texturegroup "skinfamilies" {
	{ "color_reflect_clean_tint" "color_reflect_clean" }
	{ "color_reflect_clean_tint" "color_reflect_clean" }
	{ "color_reflect_clean_tint_bounce" "color_reflect_clean_bounce" }
	{ "color_reflect_clean_tint_speed" "color_reflect_clean_speed" }
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


$sequence "idle" "anim_idle.smd" {
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
