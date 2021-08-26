"""Generates animations for HEP catcher.
"""
import math
import os.path

header = """\
version 1
nodes
0 "base" -1
1 "pellet" 0
2 "arms" 0
3 "light_north" 8
4 "light_south" 8
5 "light_east" 8
6 "light_west" 8
7 "arm_base" 0
8 "light_rot" 0
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 0
 1  0 0 {p_up}\t0 0 0
 2  0 0 {p_up}\t0 0 {p_ang}
 3  0 {light} 0\t0 0 0
 4  0 {nlight} 0\t0 0 0
 5  {light} 0 0\t0 0 0
 6  {nlight} 0 0\t0 0 0
 7  0 0 {p_dn}\t 0 0 {p_ang}
 8  0 0 0\t 0 0 {l_ang}
"""
LEN = 15
UP_FRAMES = range(0, 48, 48//LEN)
UP_ANG = range(0, 181, 180//LEN)

LIGHT = [0, 1] + list(range(2, 16, 16//(LEN-2)))

assert len(UP_FRAMES) == len(UP_ANG) == len(LIGHT), (len(UP_FRAMES), len(UP_ANG), len(LIGHT))

for file, up_f, up_a, light in [
        ('anim_expand.smd', UP_FRAMES, UP_ANG, LIGHT),
        ('anim_contract.smd', UP_FRAMES[::-1], UP_ANG[::-1], LIGHT[::-1]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, (up_frame, ang_frame, light_frame) in enumerate(zip(up_f, up_a, light)):
            print(up_frame, ang_frame, light_frame)
            f.write(frame_temp.format(
                time=time, 
                p_up=up_frame,
                p_dn=min(up_frame, 34), # Don't let the base of the arms extend above the black area
                p_ang=round(math.radians(ang_frame), 6),
                l_ang=round(math.radians(-ang_frame), 6),
                light=light_frame,
                nlight=-light_frame,
                )
            )
        f.write("end")