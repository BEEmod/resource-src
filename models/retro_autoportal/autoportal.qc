$modelname "BEE2/props_underground/autoportal.mdl"

$cdmaterials "BEE2/models/props_underground/autoportal/"
$cdmaterials "BEE2/models/props_underground/"
$cdmaterials "models/props_underground/"

$bodygroup "Body"
{
	studio "autoportal_ref.smd"
}

$mostlyopaque

$texturegroup "skinfamilies"
{
	{ 
	"nixie_fx_off"
	}
	{
	"nixie_fx_blue"
	}
	{
	"nixie_fx_oran"
	}
}

$surfaceprop "metal"

$contents "solid"

// $bbox -16.25 -24.25 -64.25 16.25 13.25 64.25

$sequence "idle" "autoportal_ref.smd" {
	fps 30
}

$collisionmodel "autoportal_phy.smd"
{
	$mass 1000
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave
}
