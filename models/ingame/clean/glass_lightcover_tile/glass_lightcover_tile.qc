$modelname "BEE2/props_clean/glass_lightcover_tile.mdl"

$staticprop

$bodygroup "Body"
{
	studio "glass_lightcover_tile_reference.smd"
}

$surfaceprop "glass"

$contents "solid"

$cdmaterials "BEE2/glass/"

$texturegroup "skinfamilies"
{
	{ "glasstile_refract01"         }
	{ "glasstile_refract01_warm"    }
	{ "glasstile_refract01_neutral" }
}

$origin 0 0 0

$sequence "idle" {
	"anims\idle.smd"
}

$collisionmodel "glass_lightcover_tile_physics.smd"
{
	$mass 184.7674
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
