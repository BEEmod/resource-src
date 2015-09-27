"""Generates animations for Laser Emitter.
"""
import math
import os.path

header = """\
version 1
nodes
0 "base"       -1
9 "rotation"   -1
1 "side_nnw"   9
2 "side_nww"   9
3 "side_nne"   9
4 "side_nee"   9
5 "side_ssw"   9
6 "side_sww"   9
7 "side_sse"   9
8 "side_see"   9
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 0
"""
rot_temp = """\
 9  0 0 {z}\t0 0 {rot}
"""
bone_temp = """\
 {bone} {x} {y} 0\t0 0 0
"""
DIST = [0, 1, 3] + list(range(6, 40, 6))
VERT = [0, 1, 2] + list(range(4, 28, 4))

assert len(DIST) == len(VERT)

for file, horiz, vert in [
        ('anim_expand.smd', DIST, VERT),
        ('anim_contract.smd', DIST[::-1], VERT[::-1]),
        ('anim_out.smd', DIST[-1:], VERT[-1:]),
        ('anim_idle.smd', DIST[:1], VERT[:1]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, (f_hor, f_ver) in enumerate(zip(horiz, vert)):
            f.write(frame_temp.format(time=time))
            for bone, ang in enumerate([7, 6, 0, 1, 4, 5, 2, 3], start=1):
                ang = (ang+0.5)/4 * math.pi
                f.write(bone_temp.format(
                    bone=bone,
                    x=round(f_hor * math.sin(ang), 7),
                    y=round(f_hor * math.cos(ang), 7),
                ))
            f.write(rot_temp.format(
                z=f_ver,
                rot=round(math.radians(f_ver*4), 7),
            ))
        f.write("end")
