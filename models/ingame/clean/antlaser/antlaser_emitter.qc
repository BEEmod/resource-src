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
	{ "laser_emitter" "antlaser_glow" }
	{ "laser_emitter" "antlaser_glow_active" }
	{ "laser_emitter_rusted" "antlaser_glow" }
	{ "laser_emitter_rusted" "antlaser_glow_active" }
}

$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "antlaser_emitter_physics.smd"
{
	$mass 120
	$concave
}
