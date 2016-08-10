// Created by Crowbar 0.34.0.0

$ModelName "BEE2/props_bts/conveyor_track_128.mdl"

$StaticProp

$BodyGroup "default"
{
	studio "conveyor_track_ref.smd"
}

$LOD 50
{
	replacemodel "conveyor_track_ref.smd" "conveyor_track_lod1.smd"
}

$Contents "solid"

$CDMaterials "models/props_factory/"

$Sequence "BindPose" {
	"conveyor_belt_anims\BindPose.smd"
}
