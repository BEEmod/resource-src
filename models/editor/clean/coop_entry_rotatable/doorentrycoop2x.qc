// Modified coop entry editor model, which shows how the players spawn if vertical.

$modelname "props_map_editor/BEE2/clean/coop_entry_rotatable.mdl"

$bodygroup "Body"
{
	studio "coop_entry_rotatable_ref.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$illumposition 0.15 -69.022 -57.074

$cdmaterials "models\props_map_editor"

$sequence "idle" {
	"anim_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
