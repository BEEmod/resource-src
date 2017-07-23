$include "reflection_cube_shared.qci"

$ModelName "BEE2/props_clean/tuleby/reflecto_bomb_cube.mdl"

$CDMaterials "BEE2/models/props_clean/tuleby/"

$TextureGroup "skinfamilies"
{
	{ "reflecto_bomb_shell" }
	{ "reflecto_bomb_shell" }
	{ "reflecto_bomb_shell_bounce" }
	{ "reflecto_bomb_shell_speed" }
}

// Kill off the lights, we're too far away to see those clearly.
$LOD 90
{
	replacemodel "bomb_cube_ref.smd" "bomb_cube_lod3.smd"
	removemesh "bee2/models/props_clean/tuleby/reflecto_bomb_lights"
}