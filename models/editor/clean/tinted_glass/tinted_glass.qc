$ModelName "props_map_editor/BEE2/clean/tinted_glass.mdl"

// Render laser both before and after glass, to ensure it's always visible.
// Puzzlemaker 
$BodyGroup "laser_1"
{
	studio "laser_ref.smd"
}
$BodyGroup "glass"
{
	studio "tinted_glass_ref.smd"
}
$BodyGroup "laser_2"
{
	studio "laser_ref.smd"
}

$CDMaterials "BEE2/models/props_map_editor/clean/"

$Sequence "idle" {
	"idle.smd"
	fps 30
}
