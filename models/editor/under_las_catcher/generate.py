"""Generates animations for Laser Emitter.
"""
import math
import os.path

header = """\
version 1
nodes
0 "base"       -1
1 "side_nnw"   0
2 "side_nww"   0
3 "side_nne"   0
4 "side_nee"   0
5 "side_ssw"   0
6 "side_sww"   0
7 "side_sse"   0
8 "side_see"   0
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 0
"""
DIST = [0, 1, 3] + list(range(6, 40, 6))

for file, distance in [
        ('anim_expand.smd', DIST),
        ('anim_contract.smd', DIST[::-1]),
        ('anim_out.smd', DIST[-1:]),
        ('anim_idle.smd', DIST[:1]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, dist in enumerate(distance):
            f.write(frame_temp.format(time))
            for bone, ang in enumerate([
        f.write("end")