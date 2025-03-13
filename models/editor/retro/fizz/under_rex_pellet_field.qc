$ModelName "props_map_editor/bee2/retro/rex_pellet_field.mdl"

$CDMaterials "BEE2/models/props_map_editor/under_fizz/" "BEE2/models/props_map_editor/rex/"

$origin 0 0 8

$BodyGroup "mdl"
{
	studio "under_rex_pellet_field_ref.smd"
}

$Sequence "idle" {
	"under_fizz_anim_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "explodeout" {
	"under_fizz_anim_explodeout.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}

$Sequence "explodein" {
	"under_fizz_anim_explodein.smd"
	fadein 0.2
	fadeout 0.2
	fps 24
}
