// Created by Crowbar 0.55

$ModelName "props_map_editor/hmw_portal_magnet_rev.mdl"

$BodyGroup "Body"
{
	studio "hmw_portal_magnet_rev_reference.smd"
}

$SurfaceProp "metalpanel"

$Contents "solid"

$IllumPosition 0 -15.98 -31.5

$CDMaterials "models\props_map_editor\"

$CBox 0 0 0 0 0 0

$BBox -56.414 -33.431 -63 56.414 33.431 0

$DefineBone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0

$Sequence "idle" {
	"hmw_portal_magnet_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}
