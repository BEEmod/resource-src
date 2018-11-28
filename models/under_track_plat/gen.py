"""Generates animations for 50s crushers.
"""
import math
import os.path

header_vert = """\
version 1
nodes
0 "root" -1
1 "rotate" 0
end
skeleton
"""

header_horiz = """\
version 1
nodes
0 "root" -1
1 "rot_lower" 0
2 "rot_upper" 0
end
skeleton
"""

frame_vert_temp = """\
time {time}
 0  0 0 0\t0 0 0
 1  -8.12 0 -45.28\t0 {p_rot:.7} 0
"""

frame_horiz_temp = """\
time {time}
 0  0 0 0\t0 0 0
 1   84 -12.25 -44  0 {n_rot:.7} -1.570796
 2  -21  22    -44  0 {p_rot:.7} 1.570796
"""


for file, header, frame_temp in [
    ('anim_vert.smd', header_vert, frame_vert_temp),
    ('anim_horiz.smd', header_horiz, frame_horiz_temp),
]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, dist in enumerate(range(0, 360, 5)):
            f.write(frame_temp.format(
                time=time, 
                p_rot=math.radians(dist),
                n_rot=-math.radians(dist),
            ))
        f.write("end")
