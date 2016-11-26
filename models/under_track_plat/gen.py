"""Generates animations for 50s crushers.
"""
import math
import os.path

header = """\
version 1
nodes
0 "root" -1
1 "rotate" 0
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 0
 1  -8.12 0 -45.28\t{x:.7} {y:.7} {z:.7}
"""



for file, axis in [
        ('anim_horiz.smd', 'y'),
        ('anim_vert.smd', 'y'),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, dist in enumerate(range(0, 360, 5)):
            data = {
                'time': time,
                'x': 0.0,
                'y': 0.0,
                'z': 0.0,
            }
            data[axis] = math.radians(dist)
            f.write(frame_temp.format_map(data))
        f.write("end")
        
with open('track_plat_vert.smd') as inp, open('track_plat_vert_fixed.smd', 'w') as out:
    for line in inp:
        if '2 0 0.500000 1 0.500000' in line:
            line = '1' + line[1:-24] + '\n'
        out.write(line)
