$ModelName "props_map_editor/bee2/clean/antlaser.mdl"

$BodyGroup "Body"
{
	studio "antlaser_ref.smd"
}

$SurfaceProp "metalpanel"

$Contents "solid"

$CDMaterials "models\props_map_editor"

$Sequence "idle" "anims\idle.smd" {
	fps 30
}

$Sequence "explodeOut" "anims\explodeOut.smd" {
	fps 30
}

$Sequence "explodeIn" "anims\explodeIn.smd"{
	fps 30
}
