$ModelName "BEE2/props_underground/pellet_launcher.mdl"

$BodyGroup "Body"
{
	studio "pellet_launcher_reference.smd"
}

$texturegroup skinfamilies {
	{ "pellet_launcher" "pellet_launcher_energy" 		}
	{ "pellet_launcher_inf" "pellet_launcher_inf_energy"}
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "BEE2/models/props_underground/pellet_launcher/"

$Sequence "idle" "anims/idle.smd"
$Sequence "close" "anims/close.smd"

$CollisionModel "pellet_launcher_phys.smd" {
	$maxconvexpieces 20
	$mass 1000
	$concave
}
