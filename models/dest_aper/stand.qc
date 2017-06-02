// Created by Crowbar 0.36.0.0

$ModelName "dest_ap/port_button_stand.mdl"

$BodyGroup "Body"
{
	studio "stand_ref.smd"
}

$SurfaceProp "metal"
$staticprop

$Contents "solid"
$mostlyopaque

$CDMaterials "metal" // Black tile
$CDMaterials "models/dest_ap/port_button/" // Everything else

$bbox -16 -16 -8 16 16 4

$TextureGroup "skinfamilies"
{
	{
	"hazard_orange_03b_off"
	"ind_corner_off"
	}
	{
	"hazard_orange_03b_on"
	"ind_corner_blue"
	}
	{
	"hazard_orange_03b_on"
	"ind_corner_oran"
	}
}

$Sequence "idle" {
	"stand_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "stand_phy.smd"
{
	$mass 400
}
