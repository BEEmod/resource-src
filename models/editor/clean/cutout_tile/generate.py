"""Generates animations for 50s crushers.
"""
import math
import os.path

header = """\
version 1
nodes
0 "base"    -1
1 "tile"     0
2 "arrow_n"  1
3 "arrow_s"  1
4 "arrow_e"  1
5 "arrow_w"  1
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 0
 1  0 0 {vert}\t0 0 0
 2  0 {horiz} {vert}\t0 0 0
 3  0 {nhoriz} {vert}\t0 0 0
 4  {horiz} 0 {vert}\t0 0 0
 5  {nhoriz} 0 {vert}\t0 0 0
"""

VERT = list(range(17))
HORIZ = list(range(0, 33, 2))

# They must have the same length!
assert len(set(map(len, [VERT, HORIZ]))) == 1

for file, vert, horiz in [
        ('anim_idle.smd', VERT[:1], HORIZ[:1]),
        ('anim_expand.smd', VERT, HORIZ),
        ('anim_out.smd', VERT[-1:], HORIZ[-1:]),
        ('anim_contract.smd',  VERT[::-1], HORIZ[::-1]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, (f_vert, f_horiz) in enumerate(zip(vert, horiz)):
            f.write(frame_temp.format(
                time=time,
                vert=f_vert,
                horiz=f_horiz,
                nhoriz=-f_horiz,
            ))
        f.write("end")
