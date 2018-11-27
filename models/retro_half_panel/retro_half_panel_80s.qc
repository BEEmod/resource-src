$ModelName "BEE2/props_underground\retro_half_panel_80s.mdl"

$BodyGroup "Body"
{
	studio "retro_half_panel_80s_ref.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "models/props_underground/" 
$CDMaterials "models/anim_wp/framework/"
$CDMaterials "BEE2/models/props_p1/"

$attachment "panel_attach" "root" 0 32 0

// Center of the panel.
$illumposition 0 32 -2 "root"

$Sequence "idle" "anims/idle.smd" {
	fps 30
}
$Sequence "open" "anims/panel_open.smd" {
	fps 30
}
