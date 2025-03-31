$modelname "BEE2/props_clean/scaffold_endcap.mdl"

$bodygroup "Body"
{
	studio "Light_rail_endcap_reference.smd"
}

$lod 30
{
	replacemodel "Light_rail_endcap_reference.smd" "Light_rail_endcap_reference_lod1.smd"
}
$lod 40
{
	replacemodel "Light_rail_endcap_reference.smd" "Light_rail_endcap_reference_lod2.smd"
}
$lod 55
{
	replacemodel "Light_rail_endcap_reference.smd" "Light_rail_endcap_reference_lod3.smd"
}

$surfaceprop "metal"

$contents "solid"
$mostlyopaque

$texturegroup "skinfamilies" {
	{
	"light_rail_endcap" 
	"light_rail_endcap_glass"
	} {
	"rail_endcap_over"
	"rail_endcap_glass_shatt"
	}
}

$cdmaterials "BEE2/models/props_clean/"
$cdmaterials "BEE2/models/props_overgrown/scaffold/"

$sequence "idle" {
	"light_rail_endcap_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "movedown" {
	"light_rail_endcap_anims\movedown.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "light_rail_endcap_physics.smd"
{
	$mass 120
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
}
