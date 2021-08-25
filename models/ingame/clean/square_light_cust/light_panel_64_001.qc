// Created by Crowbar 0.34.0.0

$ModelName "BEE2/props_ingame/square_light_64.mdl"

$StaticProp

$BodyGroup "body"
{
	studio "light_panel_64_001_reference.smd"
}

$SurfaceProp "glass"

$Contents "solid"

// Fixes the transparency issue
$mostlyopaque

$CDMaterials "models\props_lights\" //"bee2/models/props_overgrown/square_light"

$TextureGroup "skinfamilies" {
	{ 
	"light_panel_glass_neutral1" // Glass front
	//"light_panel" // Back part and frame
	}
	{ 
	"light_panel_glass_cool1"
	//"light_panel"
	}
	{ 
	"light_panel_glass_warm1"
	//"light_panel"
	}
	{ 
	"light_panel_glass_backstage1"
	//"light_panel"
	}
	
	//Broken
	// { 
	// "light_glass_neutral_shattered"
	// "light_panel_rusty"
	// }
	// { 
	// "light_glass_cool_shattered"
	// "light_panel_rusty"
	// }
	// { 
	// "light_glass_warm_shattered"
	// "light_panel_rusty"
	// }
	// { 
	// "light_glass_backstage_shattered"
	// "light_panel_rusty"
	// }
}

$BBox -8.25 -32.25 -32.25 1 32.25 32.25


$Sequence "ref" {
	"light_panel_64_001_anim.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "light_panel_64_001_physics.smd"
{
	$mass 1073.943
}
