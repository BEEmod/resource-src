"""Generates animations for Fluro Light Strips.
"""
import math
import os.path

header = """\
version 1
nodes
0 "plank"   -1
1 "fixture"  0
2 "cage_top" 1
3 "cage_n"   1
4 "cage_s"   1
5 "cage_e"   1
6 "cage_w"   1
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 3.141593
 1  0 0 {fix}\t0 0 0
 2  0 0 {pcage}\t0 0 0
 3  0 {pcage} 0\t0 0 0
 4  0 {ncage} 0\t0 0 0
 5  {pcage} 0 0\t0 0 0
 6  {ncage} 0 0\t0 0 0
"""
LIGHT = [0, 1, 2, 4, 7, 11, 14, 16]
LIGHT_REV = [16, 15, 13, 10, 7, 4, 2, 0]

CAGE = [0, 0, 0, 0, 1, 3, 5, 8]

assert len(LIGHT) == len(LIGHT_REV) == len(CAGE)

for file, light, cage, in [
        ('anim_expand.smd', LIGHT, CAGE),
        ('anim_contract.smd', LIGHT_REV, CAGE[::-1]),
        ('anim_out.smd', [16], [8]),
        ('anim_idle.smd', [0], [0]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, (f_light, f_cage) in enumerate(zip(light, cage)):
            f.write(frame_temp.format(
                time=time,
                fix=f_light,
                pcage=f_cage,
                ncage=-f_cage,
            ))
        f.write("end")
