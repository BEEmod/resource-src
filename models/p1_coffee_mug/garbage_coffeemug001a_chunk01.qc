// Created by Crowbar 0.34.0.0

$ModelName "BEE2/props_p1/coffee_mug_chunk1.mdl"

$BodyGroup "Body"
{
	studio "garbage_coffeemug001a_chunk01_reference.smd"
}

$LOD 30
{
	replacemodel "garbage_coffeemug001a_chunk01_reference.smd" "garbage_coffeemug001a_chunk01_reference_lod1.smd"
}

$SurfaceProp "pottery"

$Contents "solid"

$renamematerial "garbage003a_01" "coffee_mug"

$CDMaterials "BEE2/models/props_p1/"

$CBox 0 0 0 0 0 0

$BBox -2.382 -3.421 -3.13 2.717 3.588 2.952


$Sequence "idle" {
	"garbage_coffeemug001a_chunk01_anim_@idle.smd"
}

$CollisionModel "garbage_coffeemug001a_chunk01_physics.smd" { $concave }

$KeyValues
{
	prop_data 
	{
		"base" "pottery.Small"
	}
}
