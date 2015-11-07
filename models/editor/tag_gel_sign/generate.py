"""Generates animations for Laser Emitter.
"""
import math
import os.path

header = """\
version 1
nodes
0 "base" -1
1 "top"   0
2 "north" 0
3 "south" 0
4 "east"  0
5 "west"  0
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 {base}\t0 0 0
 1  0 0 {top}\t0 0 0
 2  0 {p_horiz} 0\t0 0 0
 3  0 {n_horiz} 0\t0 0 0
 4  {p_horiz} 0 0\t0 0 0
 5  {n_horiz} 0 0\t0 0 0
"""

VERT_FRAME = [0, 2, 6, 12] + [16] * 3
HORIZ_FRAME = [0] * 4 + list(range(0, 9, 4))

CONTRACT_VERT = [16, 14, 10, 4, 2, 0]
CONTRACT_HORIZ = [8,  4,  2, 0, 0, 0]

assert len(VERT_FRAME) == len(HORIZ_FRAME), (len(VERT_FRAME), len(HORIZ_FRAME))

for file, vert, horiz in [
        ('anim_expand.smd', VERT_FRAME, HORIZ_FRAME),
        ('anim_contract.smd', CONTRACT_VERT, CONTRACT_HORIZ),
        ('anim_out.smd', VERT_FRAME[-1:], HORIZ_FRAME[-1:]),
        ('anim_idle.smd', VERT_FRAME[:1], HORIZ_FRAME[:1]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, (f_vert, f_horiz) in enumerate(zip(vert, horiz)):
            f.write(frame_temp.format(
                time=time, 
                base=f_vert,
                top=round(f_horiz / 3, 6),
                p_horiz=f_horiz,
                n_horiz=-f_horiz,
                )
            )
        f.write("end")