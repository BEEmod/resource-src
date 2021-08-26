"""Generates animations for Laser Emitter.
"""
import math
import os.path

header = """\
version 1
nodes
0 "base"       -1
1 "lens_b"     0
2 "lens_t"     1
3 "cable"      0
4 "electrics"  3
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 0
 1  0 0 {lens_b}\t0 0 {rot}
 2  0 0 {lens_t}\t0 0 {rot}
 3  0 {half_cable} {cable}\t 0 0 0
 4  0 -{box} {box}\t 0 0 0
"""
LENS_B = [0, 1, 3, 6] + list(range(8, 24 + 1, 2)) #+ [24] * 16
LENS_T = [0]*8 + list(range(8, 16 + 1, 2)) #+ [16]*16
LENS_ROT = list(range(0, 135, 10)) #+ [140]*14
CABLE = list(range(0, 16 + 1, 2)) #+ [16]*20
BOX = [0]*7 + list(range(0, 12 + 1, 2)) #+ [12] * 9

# Pad the ends of the frames when needed so they're all the same length
vals = [LENS_B, LENS_T, LENS_ROT, CABLE, BOX]
frame_count = max(map(len, vals))
for lst in vals:
    if len(lst) < frame_count:
        lst.extend(
            [lst[-1]] * (frame_count-len(lst)) 
        )

for file, bottom, top, rot, cable, box in [
        ('anim_expand.smd', LENS_B, LENS_T, LENS_ROT, CABLE, BOX),
        ('anim_contract.smd', LENS_B[::-1], LENS_T[::-1], LENS_ROT[::-1], CABLE[::-1], BOX[::-1]),
        ('anim_out.smd', LENS_B[-1:], LENS_T[-1:], LENS_ROT[-1:], CABLE[-1:], BOX[-1:]),
        ('anim_idle.smd', LENS_B[:1], LENS_T[:1], LENS_ROT[:1], CABLE[:1], BOX[:1]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, (f_b, f_t, f_rot, f_cab, f_box) in enumerate(zip(bottom, top, rot, cable, box)):
            f.write(frame_temp.format(
                time=time, 
                lens_b=f_b,
                lens_t=f_t,
                cable=f_cab-1,
                half_cable=-f_cab/2,
                box=f_box,
                # SMDs are limited to 6 decimal places
                rot=round(math.radians(f_rot), 6),
                )
            )
        f.write("end")