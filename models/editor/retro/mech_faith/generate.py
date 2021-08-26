"""Generates animations for Retro Mechanical Faith Plates.
"""
import math
import os.path

header = """\
version 1
nodes
0 "base" -1
1 "arm"   0
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 0
 1  0 0 {vert}\t0 0 0
"""
# The arm can move a maximum of 24 units.

# Fling out with bounce
VERT = [0, 8, 16, 24, 20, 24]
# Slow retraction
VERT_REV = range(24, 0, -2)

for file, vert, in [
        ('anim_expand.smd', VERT),
        ('anim_contract.smd', VERT_REV),
        ('anim_out.smd', [24],),
        ('anim_idle.smd', [0]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, f_vert in enumerate(vert):
            f.write(frame_temp.format(
                time=time,
                vert=f_vert,
            ))
        f.write("end")
