"""Generates animations for HEP catcher.
"""
import math
import os.path

header = """\
version 1
nodes
0 "faucet" -1
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 {dist}\t0 3.141593 {rot}
"""
DIST_FRAME = [0, 1, 2, 4, 7, 11, 14, 18, 24, 30, 36, 42, 50, 58, 64]

print(DIST_FRAME)
ROT_FRAME = [x * 2 for x in DIST_FRAME]
print('Length:', len(DIST_FRAME))
for file, dist, rot in [
        ('out.smd', DIST_FRAME, ROT_FRAME),
        ('in.smd', DIST_FRAME[::-1], ROT_FRAME[::-1]),
        ('idle.smd', DIST_FRAME[:1], ROT_FRAME[:1]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, (f_dist, f_rot) in enumerate(zip(dist, rot)):
            f.write(frame_temp.format(
                time=time, 
                dist=f_dist,
                # SMDs are limited to 6 decimal places
                rot=round(math.radians(f_rot), 6),
                )
            )
        f.write("end")