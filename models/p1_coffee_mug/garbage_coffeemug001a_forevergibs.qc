// Created by Crowbar 0.34.0.0

$ModelName "BEE2/props_p1/coffee_mug.mdl"

$BodyGroup "Body"
{
	studio "garbage_coffeemug001a_forevergibs_reference.smd"
}

$LOD 30
{
	replacemodel "garbage_coffeemug001a_forevergibs_reference.smd" "garbage_coffeemug001a_forevergibs_reference_lod1.smd"
}

$SurfaceProp "pottery"

$Contents "solid"

$renamematerial "garbage003a_01" "coffee_mug"

$CDMaterials "BEE2/models/props_p1/"


$CBox 0 0 0 0 0 0

$BBox -2.639 -3.463 -3.08 2.639 3.568 2.918


$Sequence "idle" {
	"garbage_coffeemug001a_forevergibs_anim_@idle.smd"
}

$CollisionModel "mug_phy.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

$KeyValues
{
	prop_data 
	{
		"base" "Pottery.Small"
		"health" "1"
	}
}

$CollisionText
{
	break 
		{
		"model" "models/BEE2/props_p1/coffee_mug_chunk1.mdl"
		"health" "10"
		"fadetime" "0"
		}
	break 
		{ 
		"model" "models/BEE2/props_p1/coffee_mug_chunk2.mdl"
		"health" "10"
		"fadetime" "0"
		}
	break 
		{ 
		"model" "models/BEE2/props_p1/coffee_mug_chunk3.mdl"
		"health" "10"
		"fadetime" "0"
		}
}
