// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/metal_box_rusty.mdl"

$staticprop

$bodygroup "Body"
{
	studio "metal_box_reference.smd"
}

$lod 15
{
	replacemodel "metal_box_reference.smd" "metal_box_reference_lod1.smd"
}
$lod 30
{
	replacemodel "metal_box_reference.smd" "metal_box_reference_lod2.smd"
}
$lod 90
{
	replacemodel "metal_box_reference.smd" "metal_box_reference_lod3.smd"
}

$mostlyopaque

//$renamematerial "props/metal_box" "props/metal_box_skin003.vmt"

$texturegroup "skinfamilies"
{
	{
		"models/props/metal_box_skin003.vmt"
	}
	{
		"models/props/metal_box_skin001.vmt"
	}
	{
		//"props/metal_box_skin002.vmt"
		"models/props/metal_box_skin005.vmt"
	}
	{
		"models/props/metal_box_skin003.vmt"
	}
	{
		"models/props/metal_box_skin004.vmt"
		//"props_ingame/metal_box_rusty/comp_on.vmt"
	}
	{
		"models/props/metal_box_skin005.vmt"
	}
	{
		//"props/metal_box_bounce.vmt"
		"BEE2/models/props_ingame/metal_box_rusty/bounce.vmt"
	}
	{
		//"props/metal_box_speed.vmt"
		"BEE2/models/props_ingame/metal_box_rusty/speed.vmt"
	}
	{
		"models/props/metal_box_skin001_bounce.vmt"
	}
	{
		"models/props/metal_box_skin001_speed.vmt"
	}
	{
		//"props/metal_box_skin002_bounce.vmt"
		"BEE2/models/props_ingame/metal_box_rusty/on_bounce.vmt"
	}
	{
		//"props/metal_box_skin002_speed.vmt"
		"BEE2/models/props_ingame/metal_box_rusty/on_speed.vmt"
	}
}

// Model uses material "metal_box.vmt" - clean
// Model uses material "metal_box_skin001.vmt" - comp
// Model uses material "metal_box_skin002.vmt" - clean on
// Model uses material "metal_box_skin003.vmt" - rusty
// Model uses material "metal_box_skin004.vmt" - comp on
// Model uses material "metal_box_skin005.vmt" - rusty on
// Model uses material "metal_box_bounce.vmt" - clean blue
// Model uses material "metal_box_speed.vmt" - clean oran
// Model uses material "metal_box_skin001_bounce.vmt" - comp blue
// Model uses material "metal_box_skin001_speed.vmt" - comp oran
// Model uses material "metal_box_skin002_bounce.vmt" - clean on blue
// Model uses material "metal_box_skin002_speed.vmt" - clean on oran

$surfaceprop "Metal_Box"

$contents "solid"

// Only set this if you know what it does, and need it for special circumstances, such as with gibs.
// $illumposition 0 0 0

// $bbox -18.065 -18.051 -18.033 18.07 18.056 18.046

// $cbox is probably not used anymore
// $cbox 0 0 0 0 0 0

// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "static_prop" -17.816082 -17.816082 -17.815485 17.81583 17.816082 17.81583




$sequence "idle" "metal_box_anims/idle.smd" {
	fps 30
	"ACT_IDLE" 1
}

$collisionmodel "metal_box_physics.smd"
{
	$mass 40
	$inertia 1
	$damping 0.1
	$rotdamping 0

}


$keyvalues
{
	prop_data 
	{
		"base" "Metal.small"
	}
}
