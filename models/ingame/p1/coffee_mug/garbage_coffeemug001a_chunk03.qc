// Created by Crowbar 0.34.0.0

$ModelName "BEE2/props_p1/coffee_mug_chunk3.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "garbage_coffeemug001a_chunk03_reference.smd"
}


$SurfaceProp "pottery"

$Contents "solid"

$renamematerial "garbage003a_01" "coffee_mug"

$CDMaterials "BEE2/models/props_p1/"

$CBox 0 0 0 0 0 0

$BBox -2.697 -3.001 -3.174 0.175 1.023 3.026

$Sequence "idle" {
	"garbage_coffeemug001a_chunk03_anim_@idle.smd"
}

$CollisionModel "garbage_coffeemug001a_chunk03_physics.smd" { $concave }

$KeyValues
{
	prop_data 
	{
		"base" "pottery.Small"
	}
}
