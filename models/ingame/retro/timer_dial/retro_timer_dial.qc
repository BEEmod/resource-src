$ModelName "BEE2/props_underground/timer_dial.mdl"

$BodyGroup "Body"
{
	studio "timer_sign_ref.smd"
}

$lod 30
{
	replacemodel "timer_sign_ref.smd" "timer_sign_lod1.smd"
}

$lod 75
{
	replacemodel "timer_sign_ref.smd" "timer_sign_lod2.smd"
}

$origin 0 0 4

$SurfaceProp "metal"

$Contents "solid"

$renamematerial "squarebeams_rusty_01_vtx" "squarebeams_skin2"

$CDMaterials "models/props_underground/"
$CDMaterials "BEE2/models/props_underground/"
$CDMaterials "models/anim_wp/framework/"
//$CDMaterials "models/a4_destruction/" // Squarebeams

$hboxset "default"
$hbox 0 "root"  -16 -16 0   16 16 6


$Sequence "idle" "timer_sign_ref.smd"

$include "anims.qci"
