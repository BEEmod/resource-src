$modelname "props_map_editor/BEE2/clean/crusher.mdl"

$model "crusher" "crusher_ref.smd"

$cdmaterials "models/props_map_editor/"
$surfaceprop "default"

$sequence idle {
	"BindPose" 
	fps 30.00 
	rotate -90
}
$sequence explodeOut {
	"explodeOut" 
	fps 15.00 
	rotate -90
}
$sequence explodeIn {
	"explodeIn" 
	fps 15.00 
	rotate -90
}
