$modelname "BEE2/props_underground/antlaser_emitter_retro.mdl"

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
	{ "antlaser_glow" }
	{ "antlaser_glow_active" }
}

$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "antlaser_emitter_retro_physics.smd"
{
	$mass 120
	$concave
}
