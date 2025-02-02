$modelname "props_map_editor/bee2/logic/blocks/cutout_tile.mdl"

$body "Body" "cutout_tile_ref.smd"

$cdmaterials "BEE2/models/props_map_editor/"

$sequence "idle" "cutout_tile_ref.smd"

$sequence "expand" "anim_expand.smd" {
	fps 45
}

$sequence "contract" "anim_contract.smd" {
	fps 45
}