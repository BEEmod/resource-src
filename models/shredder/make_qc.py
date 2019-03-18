import os

template = """\
$modelname "BEE2/props_bts/shredder/{name}.mdl"

$staticprop

$origin {offset}

$bodygroup "default"
{{
	studio "{name}.smd"
}}

$surfaceprop "default"

$contents "solid"

$illumposition {offset}

$cdmaterials "models/props_gameplay/" "BEE2/models/props_overgrown/"

$texturegroup "skinfamiles" {{
	{{ "shredder" }}
	{{ "shredder_rusty" }}
}}

$sequence "BindPose" {{
	"BindPose.smd"
	fps 30
}}

"""
# $cbox 0 0 0 0 0 0
# $bbox -512 -128 -92.309 512 0 0

x_off = 57.4779
z_off = -100.881

for size in ('1', '2', '4', '8'):
    for direction, xmul in [('left', -1), ('right', 1)]:
        for shape in ('cowl','grind'):
            with open(f'{direction}_{shape}_{size}.qc', 'w') as f:
                f.write(template.format(
                    name=f'{direction}_{shape}_{size}',
                    offset=f'{x_off*xmul} 0 {z_off}',
                ))
