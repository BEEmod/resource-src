$modelname "BEE2/props_clean/antlaser_emitter_sendtor.mdl"

$bodygroup "Body"
{
	studio "antlaser_emitter_reference.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$mostlyopaque

$cdmaterials "BEE2/models/props_clean/antlaser/" "models/props/"
$renamematerial "antlaser_glow_blue" "antlaser_sendtor_glow_white"

$texturegroup "skinfamilies"
{
	{ "laser_emitter" "antlaser_sendtor_glow_white" }
	{ "laser_emitter" "antlaser_sendtor_glow_green" }
	{ "laser_emitter" "antlaser_sendtor_glow_yellow" }
	{ "laser_emitter_rusted" "antlaser_sendtor_glow_white" }
	{ "laser_emitter_rusted" "antlaser_sendtor_glow_green" }
	{ "laser_emitter_rusted" "antlaser_sendtor_glow_yellow" }
}

$sequence "idle" "antlaser_emitter_reference.smd"

$collisionmodel "antlaser_emitter_physics.smd"
{
	$mass 120
	$concave
}
