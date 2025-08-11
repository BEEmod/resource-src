$modelname "props_map_editor/bee2/clean/drawbridge_white_down.mdl"
$staticprop

// Hit the limit, need to split up.
$bodygroup "a"
{
	studio "drawbridge_down_common_ref.smd"
}
$bodygroup "b"
{
	studio "drawbridge_down_white_ref.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$cdmaterials "models/props_map_editor/"

$sequence "idle" "drawbridge_down_white_ref.smd"
