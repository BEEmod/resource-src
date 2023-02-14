$modelname "props_map_editor/bee2/clean/drawbridge_black_up.mdl"
$staticprop

// Hit the limit, need to split up.
$bodygroup "a"
{
	studio "drawbridge_up_common_ref.smd"
}
$bodygroup "b"
{
	studio "drawbridge_up_black_ref.smd"
}

$surfaceprop "metalpanel"

$contents "solid"

$cdmaterials "models/props_map_editor/"

$sequence "idle" "drawbridge_up_black_ref.smd"
