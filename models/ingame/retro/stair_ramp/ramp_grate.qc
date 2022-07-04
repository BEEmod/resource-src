$ModelName "BEE2/props_underground/ramp.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "ramp_ref.smd"
}

$SurfaceProp "metalgrate"

$Contents "grate"


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
