"""Generates animations for HEP catcher.
"""
import math
import os.path

header = """\
version 1
nodes
0 "base"       -1
1 "top"         0
2 "glass_north" 1
3 "glass_south" 1
4 "glass_east"  1
5 "glass_west"  1
6 "frame_ne"    1
7 "frame_nw"    1
8 "frame_sw"    1
9 "frame_se"    1
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 0
 1  0 0 {top}\t0 0 0
 2  0 {pgls} 0\t0 0 0
 3  0 {ngls} 0\t0 0 0
 4  {pgls} 0 0\t0 0 0
 5  {ngls} 0 0\t0 0 0
 6  {pfrm} {pfrm} 0\t0 0 0
 7  {nfrm} {pfrm} 0\t0 0 0
 8  {pfrm} {nfrm} 0\t0 0 0
 9  {nfrm} {nfrm} 0\t0 0 0
"""
VERT_FRAME = [0, 2, 6, 12] + [16] * 4
HORIZ_FRAME = range(0, 32, 4)

assert len(VERT_FRAME) == len(HORIZ_FRAME), (len(VERT_FRAME), len(HORIZ_FRAME))
for file, vert, horiz in [
        ('anim_expand.smd', VERT_FRAME, HORIZ_FRAME),
        ('anim_contract.smd', VERT_FRAME[::-1], HORIZ_FRAME[::-1]),
        ('anim_out.smd', VERT_FRAME[-1:], HORIZ_FRAME[-1:]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, (f_vert, f_horiz) in enumerate(zip(vert, horiz)):
            f.write(frame_temp.format(
                time=time, 
                top=f_vert,
                pgls=f_horiz,
                ngls=-f_horiz,
                # The frame sections move diagonally, we need a little trig to find the correct
                # x/y distance
                # SMDs are limited to 6 decimal places
                pfrm=round(math.sqrt((f_horiz**2)/2), 6),
                nfrm=round(-math.sqrt((f_horiz**2)/2), 6),
                )
            )
        f.write("end")