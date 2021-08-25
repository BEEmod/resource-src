// Created by Crowbar 0.36.0.0

$ModelName "BEE2/props_underground\neon_timer.mdl"

$StaticProp

$BodyGroup "Body"
{
	studio "retro_timer_ref.smd"
}

$origin 0 -2 0

$SurfaceProp "metal"

$Contents "solid"

$texturegroup "skinfamilies" {
	{ "countdown_timer_num_00" }
	{ "countdown_timer_num_01" }
	{ "countdown_timer_num_02" }
	{ "countdown_timer_num_03" }
	{ "countdown_timer_num_04" }
	{ "countdown_timer_num_05" }
	{ "countdown_timer_num_06" }
	{ "countdown_timer_num_07" }
	{ "countdown_timer_num_08" }
	{ "countdown_timer_num_09" }
	{ "countdown_timer_num_blank" }
}

$CDMaterials "models\props_underground\"
$CDMaterials "effects/" // Timer signs

$Sequence "idle" "retro_timer_ref.smd"
