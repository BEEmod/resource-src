$modelname "props/konclan/antlaser_emitter.mdl"

$bodygroup "Body"
{
	studio "antlaser_emitter.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$illumposition 0 -8 0

$mostlyopaque

$cdmaterials "models\props\"

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
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
