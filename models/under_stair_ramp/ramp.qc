// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_underground/ramp.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "ramp_ref.smd"
}

$SurfaceProp "metalgrate"

$Contents "grate"

$MaxEyeDeflection 90

$CDMaterials "models\props_underground\"

$CBox 0 0 0 0 0 0



$Sequence "idle" { 
	"ramp_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "ramp_phy.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
