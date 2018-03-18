$ModelName "BEE2/props_underground/crusher.mdl"

$BodyGroup "Body"
{
	studio "crusher_ref.smd"
}

$origin 0 0 4

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "models/props_underground/"
$CDMaterials "BEE2/models/props_underground/"

$illumposition 0 0 -10

$staticprop

$Sequence "idle" "crusher_ref.smd"

$CollisionModel "crusher_phy.smd" {
	$mass 1000
}
