// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_p1/radio_clean.mdl"

$bodygroup "Body"
{
	studio "mdl.smd" // This name appears in the model, shorten it to reduce file size
}

$cdmaterials "BEE2/models/props_p1"

$surfaceprop "metalpanel"

$contents "solid"

$staticprop

$illumposition 0 0 5

$sequence "idle" "idle.smd" {
	fps 30
}

$collisionmodel "phys.smd"
{
	$mass 30
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave
	$masscenter 0 0 5
}

$keyvalues
{
	prop_data
	{
		base Metal.Small 
		blockLOS 0
		allowStatic 1
		health 0 // Unbreakable
	}
	physgun_interactions
	{
		// When held, have the 'FM' display face the player.
	 	preferred_carryangles "0 180 0"
	}
}
