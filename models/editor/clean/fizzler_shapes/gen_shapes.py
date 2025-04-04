"""Generate models for all the different fizzler sizes."""
from typing import NamedTuple, List, Tuple, Dict
from srctools.smd import Mesh, Bone, BoneFrame, Triangle, Vertex
from srctools import VMF, Vec, Angle
import os
import subprocess
from math import radians
from concurrent.futures import ProcessPoolExecutor, ThreadPoolExecutor

# Name to use for the root bone.
ROOT_NAME = 'root'
CACHE = {}

STYLES = [
    ('clean', Angle(0, 0, 0), 'fizzler/fizz_effect_portal'),
    ('retro', Angle(0, 90, 0), 'fizzler/fizz_effect_retro_portal'),
]

P2_LOC = os.environ.get('PORTAL_2_LOC')
print('Portal 2: ', P2_LOC)

class Shape:
    """A fizzler size, plus the block geo."""
    def __init__(self, name: str, block: str, points: List[Tuple[Vec, Angle]]) -> None:
        self.name = name
        self.points = points
        self.block_fname = block + '.smd'

    def __repr__(self) -> str:
        return f'<Shape {self.name}>'


SHAPES = [
    Shape(
        f'standing_fizzler_x{i}',
        f'blocks/standing_{i}_ref',
        [
            (Vec(128*off, 0, 0), Angle(90, 0, yaw))
            for off in range(5)[:i]
            for yaw in [90, 270]
        ]
    ) for i in [1, 2, 3, 4, 5]
] + [
    Shape(
        f'reclined_fizzler_x{i}',
        f'blocks/reclined_{i}_ref',
        [
            (Vec(0, -128*r, +48), Angle(180, 90, 0)),
            (Vec(0, -128*l, -48), Angle(180, 270, 0)),
        ]
    ) for i, l, r in [
        (1, 0, 0),
        (2, 0, 1),
        (3, 1, 1),
        (4, 1, 2),
        (5, 2, 2),
    ]
]


def load_model(filename: str) -> Mesh:
    """Load the given model, caching it."""
    try:
        return CACHE[filename]
    except KeyError:
        with open(filename, 'rb') as f:
            ret = CACHE[filename] = Mesh.parse_smd(f)
        return ret


def test_vmf() -> None:
    """Verify the positions by generating a VMF."""
    vmf = VMF()
    for shape in SHAPES:
        group = vmf.create_visgroup(shape.name.replace('/', '_').replace('fizzler', '').replace('__', '_'))
        for pos, angle in shape.points:
            ent = vmf.create_ent(
                'prop_static',
                model='models/props_map_editor/fizzler.mdl',
                origin=pos @ angle,
                angles=angle,
            )
            ent.visgroup_ids.add(group.id)
            ent.vis_shown = False
    print('Dumping shape.vmf')
    with open('shape.vmf', 'w') as f:
        vmf.export(f)


def make_anim(
    root: Bone,
    sty_ang: Angle,
    new_bones: Dict[Tuple[float, float, float], Dict[Bone, Bone]],
    name: str,
    animation: Dict[int, List[BoneFrame]],
) -> None:
    """Generate the animation file."""
    print(f' - {name}...', flush=True)
    mesh = Mesh({}, {}, [])

    # Add all the bones.
    mesh.bones[ROOT_NAME] = root
    for bone_map in new_bones.values():
        for bone in bone_map.values():
            mesh.bones[bone.name] = bone

    # Do the animation
    for frame_num, frames in animation.items():
        mesh.animation[frame_num] = new_frames = [
            BoneFrame(root, Vec(), Angle()),
        ]
        for angle, bone_map in new_bones.items():
            new_frames.append(BoneFrame(bone_map[root], Vec(), Angle(angle)))
            for frame in frames:
                new_frames.append(BoneFrame(bone_map[frame.bone], frame.position, frame.rotation))

    with open(name + '.smd', 'wb') as f:
        mesh.export(f)


def generate(style: str, sty_ang: Angle, field_tex: str, shape: Shape) -> str:
    """Generate a specific model."""
    # Load the models we use.
    emitter = load_model(style + '_fizz_ref.smd')
    anim_open = load_model(style + '_explode_out.smd')
    anim_close = load_model(style + '_explode_in.smd')

    ref = Mesh.blank(ROOT_NAME)
    [root] = ref.bones.values()

    # First, copy in the static block geo.
    try:
        ref.append_model(load_model(shape.block_fname))
    except FileNotFoundError:
        print('No blocks for: ', shape.block_fname)

    # Rename the fizzler field material.
    for tri in ref.triangles:
        if tri.mat == 'field':
            tri.mat = field_tex

    new_bones: Dict[Tuple[float, float, float], Dict[Bone, Bone]] = {}
    ind = 1
    # Generate the duplicate sets of bones.
    for pos, angles in shape.points:
        angles = sty_ang @ angles
        if angles.as_tuple() in new_bones:
            continue

        bones: Dict[Bone, Bone]
        bones = new_bones[angles.as_tuple()] = {
            bone: Bone(f'{bone.name}_{ind}', None)
            for bone in emitter.bones.values()
        }
        local_root = bones[root] = Bone(f'{ROOT_NAME}_{ind}', root)
        ind += 1

        # Now they're all created, fix up the parents.
        for bone in emitter.bones.values():
            if bone.parent is not None:
                bones[bone].parent = bones[bone.parent]
            else:
                bones[bone].parent = local_root
        # Add the bones to the reference.
        for bone in bones.values():
            ref.bones[bone.name] = bone

        # And copy over their start pose.
        ref.animation[0].append(BoneFrame(local_root, Vec(), Angle()))
        for frame in emitter.animation[0]:
            ref.animation[0].append(BoneFrame(bones[frame.bone], frame.position, frame.rotation))

    # Now, place each emitter.
    for pos, angles in shape.points:
        angles = sty_ang @ angles
        bones = new_bones[angles.as_tuple()]
        for tri in emitter.triangles:
            ref.triangles.append(Triangle(tri.mat, *[
                Vertex(
                    (vert.pos @ sty_ang) + pos,
                    vert.norm,
                    vert.tex_u,
                    vert.tex_v,
                    [
                        (bones[old], fact)
                        for old, fact in vert.links
                    ]
                ) for vert in tri
            ]))

    folder = f'generated/{style}/'

    make_anim(root, sty_ang, new_bones, f'{folder}{shape.name}_open', anim_open.animation)
    make_anim(root, sty_ang, new_bones, f'{folder}{shape.name}_close', anim_close.animation)
    make_anim(root, sty_ang, new_bones, f'{folder}{shape.name}_idle', {0: anim_open.animation[0]})

    print(f' - {folder}{shape.name}_ref...', flush=True)
    with open(f'{folder}{shape.name}_ref.smd', 'wb') as f:
        ref.export(f)

    qc_file = f'{folder}{shape.name}.qc'
    with open(qc_file, 'w') as f:
        f.write(f'$modelname "props_map_editor/BEE2/{style}/{shape.name}.mdl"\n')
        f.write('$BodyGroup "Body" {\n\tstudio "%_ref.smd"\n}\n'.replace('%', shape.name))
        f.write('$cdmaterials "models/props_map_editor/" "BEE2/models/props_map_editor/"\n')
        f.write('''
$sequence "idle" "%_idle.smd"
$sequence "explodeOut" "%_open.smd"
$sequence "explodeIn" "%_close.smd"
'''.replace('%', shape.name))
    return qc_file


if __name__ == '__main__':
    # test_vmf()
    import logging
    logging.basicConfig()
    print('Starting')
    futures = []
    with ThreadPoolExecutor() as exc:
        for cur_style in STYLES:
            for cur_shape in SHAPES:
                print('Submit: ', cur_style, cur_shape)
                futures.append(exc.submit(generate, *cur_style, cur_shape))
                # generate(*cur_style, cur_shape)
    print('Complete!')

    if P2_LOC is not None:
        for fut in futures:
            subprocess.call([
                P2_LOC + '/bin/studiomdl.exe',
                '-game',
                P2_LOC + '/bee2_dev/',
                '-nop4',
                fut.result(),
            ])
