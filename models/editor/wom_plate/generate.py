"""Generates animations for WrathOfMobius' conductive plates.
"""
import math
import os.path

header = """\
version 1
nodes
0 "base"       -1
1 "cowl_lift"   0
2 "cowl_north"  1
3 "cowl_south"  1
4 "cowl_east"   1
5 "cowl_west"   1
6 "overlay"     1
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 0
 1  0 0 {lift}\t0 0 0
 2  0 {cowl} 0\t0 0 0
 3  0 {ncowl} 0\t0 0 0
 4  {cowl} 0 0\t0 0 0
 5  {ncowl} 0 0\t0 0 0
 6  0 0 {lift}\t 0 0 0
"""
LIFT_FRAMES = range(0, 32 + 1, 4)
COWL_FRAMES = range(0, 48 + 1, 6)


assert len(LIFT_FRAMES) == len(COWL_FRAMES), (len(LIFT_FRAMES), len(COWL_FRAMES))

for file, lift, cowl in [
        ('anim_expand.smd', LIFT_FRAMES, COWL_FRAMES),
        ('anim_contract.smd', LIFT_FRAMES[::-1], COWL_FRAMES[::-1]),
        ('anim_out.smd', LIFT_FRAMES[-1:], COWL_FRAMES[-1:]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, (f_lift, f_cowl) in enumerate(zip(lift, cowl)):
            f.write(frame_temp.format(
                time=time, 
                lift=f_lift,
                cowl=f_cowl,
                ncowl=-f_cowl,
                )
            )
        f.write("end")