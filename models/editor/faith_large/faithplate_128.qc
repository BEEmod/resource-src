// Created by Crowbar 0.36.0.0

$ModelName "props_map_editor/large_faith_plate.mdl"

$BodyGroup "Body"
{
	studio "faithplate_128.smd"
}


$SurfaceProp "metalpanel"

$Contents "solid"

$CDMaterials "models\props_map_editor"

$BBox -51.2 -51.2 -108.209 51.2 51.2 0

// Reuse original animations, they aren't changed
$includemodel "props_map_editor/faithplate_128.mdl"

// $Sequence "idle" {
	// "faithplate_128_anim_@idle.smd"
	// fadein 0.2
	// fadeout 0.2
	// fps 30
// }

// $Sequence "explodeOut" {
	// "faithplate_128_anim_@explodeOut.smd"
	// fadein 0.2
	// fadeout 0.2
	// fps 30
// }

// $Sequence "explodeIn" {
	// "faithplate_128_anim_@explodeIn.smd"
	// fadein 0.2
	// fadeout 0.2
	// fps 30
// }
