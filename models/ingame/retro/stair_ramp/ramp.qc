$ModelName "BEE2/props_underground/stair_support.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "ramp_ref.smd"
}

$SurfaceProp "metalgrate"

$CDMaterials "models\props_underground\"

$Sequence "idle" { 
	"ramp_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "ramp_phy.smd"
{
	$mass 5000
	$concave
}
