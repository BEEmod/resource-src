$modelname "props_map_editor/bee2/clean/conveyor_belt_glass.mdl"

$staticprop

$bodygroup "Body"
{
	studio "conveyor_belt_glass_ref.smd"
}

$surfaceprop "no_decal"

$contents "solid"

$cdmaterials "models\props_map_editor\"
$cdmaterials "BEE2\models\props_map_editor\"

// Idle animations have less data than reference models so we use those instead.
$sequence "idle" "anims/idle.smd"