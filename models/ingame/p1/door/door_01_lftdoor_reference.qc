// Created by Crowbar 0.34.0.0

$ModelName "BEE2/props_p1/door_left.mdl"

$BodyGroup "Body"
{
	studio "door_01_lftdoor_reference_reference.smd"
}

$LOD 40
{
	replacemodel "door_01_lftdoor_reference_reference.smd" "door_01_lftdoor_reference_lod1.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "BEE2/models/props_p1/"

$Sequence "idle" {
	"door_01_lftdoor_reference_anims\idle.smd"
	fps 30
}
