"""Generates animations for Retro Laser Relays.
"""
import math
import os.path

header = """\
version 1
nodes
0 "base"  -1
1 "glass"  0
2 "pole"   1
3 "cap"    2
4 "n"      2
5 "sw"     2
6 "se"     2
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 0
 1  0 0 {vert}\t0 0 {rot}
 2  0 0 {vert2}\t0 0 {rot}
 3  0 0 {vert3}\t0 0 {rot}
 4  0 {horiz} 0\t0 0 0
 5  {n_horiz} {n_horiz} 0\t0 0 0
 6  {p_horiz} {n_horiz} 0\t0 0 0
"""
VERT = [0, 1, 3, 6] + list(range(8, 24, 4)) + [24, 28, 24, 20, 16, 12, 12, 12]
ROT = VERT[:-8] + list(range(24, 56, 4))
HORIZ = [0] * 10 + [4, 8, 12, 18, 22, 24]

assert len(VERT) == len(HORIZ) == len(ROT), (len(VERT), len(HORIZ), len(ROT))

for file, vert, horiz, rot in [
        ('anim_expand.smd', VERT, HORIZ, ROT),
        ('anim_contract.smd', VERT[::-1], HORIZ[::-1], ROT[::-1]),
        ('anim_out.smd', VERT[-1:], HORIZ[-1:], ROT[-1:]),
        ('anim_idle.smd', VERT[:1], HORIZ[:1], ROT[:1]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, (f_vert, f_horiz, f_rot) in enumerate(zip(vert, horiz, rot)):
            f.write(frame_temp.format(
                time=time, 
                # SMDs are limited to 6 decimal places
                rot=round(math.radians(f_rot), 6),
                
                vert=f_vert,
                vert2=1.5*f_vert,
                vert3=1/1.5*f_vert,
                horiz=f_horiz,
                # Figure out coordinates so diagonally it's the same length.
                p_horiz=round(math.sqrt(f_horiz**2 / 2), 6),
                n_horiz=-round(math.sqrt(f_horiz**2 / 2), 6),
                )
            )
        f.write("end")