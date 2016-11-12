// Created by Crowbar 0.34.0.0

$ModelName "BEE2/props_p1/coffee_mug_chunk2.mdl"

$BodyGroup "Body"
{
	studio "garbage_coffeemug001a_chunk02_reference.smd"
}


$SurfaceProp "pottery"

$Contents "solid"

$renamematerial "garbage003a_01" "coffee_mug"

$CDMaterials "BEE2/models/props_p1/"

$CBox 0 0 0 0 0 0

$BBox -2.652 -3.748 -3.229 2.31 0 3.051


$Sequence "idle" {
	"garbage_coffeemug001a_chunk02_anim_@idle.smd"
}

$CollisionModel "garbage_coffeemug001a_chunk02_physics.smd" { $concave }

$KeyValues
{
	prop_data 
	{
		"base" "pottery.Small"
	}
}
