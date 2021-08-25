$modelname "BEE2/props_underground/glass_door_frame.mdl"

$cdmaterials "models/anim_wp/framework/"

$body "frame" "frame.smd"

$surfaceprop "metal"

$contents "solid"

// $bbox -16.25 -24.25 -64.25 16.25 13.25 64.25
// Put the origin up here, so when the door is open the top bit is lit nicely.
$illumposition 0 0 30

$sequence "idle" "frame.smd"
$collisionmodel "frame_coll.smd"
{
	$mass 200
	$concave
}
