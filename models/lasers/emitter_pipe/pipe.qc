// Created by Crowbar 0.19.0.0

$modelname "BEE2/props_ingame/lasers/emitter_pipe.mdl"
$staticprop

$bodygroup "Body"
{
	studio "pipe_reference.smd"
}

$lod 40
{
	replacemodel "pipe_reference.smd" "pipe_reference_lod2.smd"
}
$lod 80
{
	replacemodel "pipe_reference.smd" "pipe_reference_lod3.smd"
}

$mostlyopaque

$cdmaterials "models\props\"

$texturegroup "skinfamilies"
{
	{
		"Laser_emitter.vmt"
	}
	{
		"laser_emitter_rusted.vmt"
	}
}

$surfaceprop "metalpanel"

$contents "solid"

$sequence "idle" "anims\idle.smd" {
	fps 30
}

