$definevariable lights_mat "reflecto_bomb_lights_color"
$include "reflection_cube_shared.qci"

$ModelName "BEE2/props_clean/tuleby/reflecto_bomb_cube_color.mdl"

$CDMaterials "BEE2/models/props_clean/tuleby/"

$renamematerial "reflecto_bomb_shell" "reflecto_bomb_shell_color"

$TextureGroup "skinfamilies"
{
	{ "reflecto_bomb_shell_color" }
	{ "reflecto_bomb_shell_color" }
	{ "reflecto_bomb_shell_bounce_color" }
	{ "reflecto_bomb_shell_speed_color" }
}

// Kill off the lights, we're too far away to see those clearly.
$LOD 90
{
	replacemodel "bomb_cube_ref.smd" "bomb_cube_lod3.smd"
	removemesh "bee2/models/props_clean/tuleby/reflecto_bomb_lights_color"
}
