// Created by Crowbar 0.55

$ModelName "BEE2/props_underground/neuro_vent_50s.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "neuro_vent_50s.smd"
}

$SurfaceProp "metal"

$Contents "solid"

$IllumPosition 0 16 8

$CDMaterials "models/props_office/"

$CBox 0 0 0 0 0 0

$Sequence "idle" {
	"neuro_vent_50s.smd"
}

$CollisionModel "neuro_vent_phy.smd"
{
	$mass 5000
	$concave
	$maxconvexpieces 3
}
