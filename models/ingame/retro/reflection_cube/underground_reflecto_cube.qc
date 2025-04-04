// Created by Rosemary.

$modelname "bee2/rosemary/underground_reflecto_cube.mdl"

$bodygroup "Body"
{
	studio "underground_reflecto_cube_model.smd"
}


$surfaceprop "Underground_Cube"

$contents "solid"

$illumposition 0 -1.246 0

$mostlyopaque

$cdmaterials "bee2\models\rosemary\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "underground_reflecto_cube"        }
	{ "underground_reflecto_cube"        }
	{ "underground_reflecto_cube_bounce" }
	{ "underground_reflecto_cube_speed"  }
}

$attachment "focus" "polymsh70" 0 0 20 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -17.97 -18.275 -18.275 20.746 18.275 18.275

$definebone "polymsh70" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "underground_weighted_cube_model" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"underground_reflecto_cube_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "underground_reflecto_cube_physics.smd"
{
	$mass 40
	$inertia 1
	$damping 0.1
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}

$keyvalues
{
	prop_data 
	{
		"base" "Metal.small"
	}
}
