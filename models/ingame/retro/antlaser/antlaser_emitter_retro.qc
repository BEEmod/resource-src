$modelname "BEE2/props_underground/antlaser_emitter.mdl"

$bodygroup "Body"
{
	studio "antlaser_emitter_retro_reference.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$mostlyopaque

$cdmaterials "BEE2/models/props_clean/antlaser/" "models/props_underground/"

$texturegroup "skinfamilies"
{
	{ "antlaser_glow_blue" }
	{ "antlaser_glow_orange" }
}

$sequence "idle" "antlaser_emitter_retro_reference.smd"

$collisionmodel "antlaser_emitter_retro_physics.smd"
{
	$mass 120
	$concave
}
