$ModelName "BEE2/props_underground/pellet_launcher.mdl"

$BodyGroup "Body"
{
	studio "pellet_launcher_reference.smd"
}

$texturegroup skinfamilies {
	{ "pellet_launcher"		}
	{ "pellet_launcher_inf" }
}

$SurfaceProp "metal"

$Contents "solid"

$CDMaterials "BEE2/models/props_underground/pellet_launcher/"

$Sequence "idle" "anims/idle.smd"
$Sequence "close" "anims/close.smd"

$CollisionModel "pellet_launcher_phy.smd" {
	$maxconvexpieces 4
	$mass 1000
	$concave
}
