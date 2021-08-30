$modelname "props_map_editor/BEE2/p1/lights/light_tile_warm.mdl"

$staticprop

$bodygroup "Body"
{
	studio "light_tile_cool_reference.smd"
}

$surfaceprop "no_decal"

$contents "solid"

$illumposition 0 0 -32

$cdmaterials "BEE2\models\props_map_editor\"
$cdmaterials "BEE2\models\props_map_editor\p1\lights\"

$renamematerial white001 light_warm

$sequence "idle" {
	"anims\idle.smd"
}
