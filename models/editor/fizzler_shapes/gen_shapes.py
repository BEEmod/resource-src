"""Generate models for all the different fizzler sizes."""
from typing import NamedTuple, List, Tuple
from srctools.smd import Mesh, Bone, BoneFrame
from srctools import VMF, Vec


class Style:
    """A style, plus the specific emitter models for it."""
    def __init__(self, name: str) -> None:
        self.name = name
        # with open(name + '_fizz_ref.smd', 'rb') as f:
        #     self.ref = Mesh.parse_smd(f)
        # with open(name + '_open.smd', 'rb') as f:
        #     self.open = Mesh.parse_smd(f)
        # with open(name + '_close.smd', 'rb') as f:
        #     self.close = Mesh.parse_smd(f)

STYLES = [
    Style('clean'),
    # Style('retro'),
]


class Shape:
    """A fizzler size, plus the block geo."""
    def __init__(self, name: str, points: List[Tuple[Vec, Vec]]) -> None:
        self.name = name
        self.points = points

SHAPES = [
    Shape(
        f'lautaro/standing_fizzler_x{i}',
        f'blocks/standing_{i}_ref',
        [
            (Vec(0, 128*off, 0), Vec(0, yaw, 90))
            for off in range(5)[:i]
            for yaw in [0, 180]
        ]
    ) for i in [1, 2, 3, 4, 5]
] + [
    Shape(
        f'lautaro/reclined_fizzler_x{i}',
        f'blocks/reclined_{i}_ref',
        [
            (Vec(-48, 0, -128*r), Vec(270, 270, 0)),
            (Vec(+48, 0, -128*l), Vec(90, 270, 0)),
        ]
    ) for i, l, r in [
        (1, 0, 0),
        (2, 0, 1),
        (3, 1, 1),
        (4, 1, 2),
        (5, 2, 2),
    ]
]


def test_vmf() -> None:
    """Verify the positions by generating a VMF."""
    vmf = VMF()
    for shape in SHAPES:
        group = vmf.create_visgroup(shape.name.replace('/', '_').replace('fizzler', '').replace('__', '_'))
        for pos, angle in shape.points:
            ent = vmf.create_ent(
                'prop_static',
                model='models/props_map_editor/fizzler.mdl',
                origin=pos.rotate(*angle),
                angles=angle,
            )
            ent.visgroup_ids.add(group.id)
            ent.vis_shown = False
    print('Dumping shape.vmf')
    with open('shape.vmf', 'w') as f:
        vmf.export(f)


if __name__ == '__main__':
    test_vmf()
