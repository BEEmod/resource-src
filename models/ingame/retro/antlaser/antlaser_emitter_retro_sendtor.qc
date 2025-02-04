$modelname "BEE2/props_underground/antlaser_emitter_sendtor.mdl"

$bodygroup "Body"
{
	studio "antlaser_emitter_retro_sendtor_reference.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$mostlyopaque

$cdmaterials "BEE2/models/props_clean/antlaser/" "models/props_underground/"

$texturegroup "skinfamilies"
{
	{ "antlaser_sendtor_glow_white" }
	{ "antlaser_sendtor_glow_green" }
	{ "antlaser_sendtor_glow_yellow" }
}

$sequence "idle" "antlaser_emitter_retro_sendtor_reference.smd"

$collisionmodel "antlaser_emitter_retro_physics.smd"
{
	$mass 120
	$concave
}
