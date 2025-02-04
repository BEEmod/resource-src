$modelname "BEE2/props_clean/antlaser_emitter.mdl"

$bodygroup "Body"
{
	studio "antlaser_emitter_reference.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$mostlyopaque

$cdmaterials "BEE2/models/props_clean/antlaser/" "models/props/"

$texturegroup "skinfamilies"
{
	{ "laser_emitter" "antlaser_glow_blue" }
	{ "laser_emitter" "antlaser_glow_orange" }
	{ "laser_emitter_rusted" "antlaser_glow_blue" }
	{ "laser_emitter_rusted" "antlaser_glow_orange" }
}

$sequence "idle" "antlaser_emitter_reference.smd"

$collisionmodel "antlaser_emitter_physics.smd"
{
	$mass 120
	$concave
}
