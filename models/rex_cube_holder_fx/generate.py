"""A randomly rotating box, used for tube items
"""
import os.path
import random
import math
import itertools

header = """\
version 1
nodes
0 "root"  -1
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 {z}\t0 0 {spin}
"""

def frames():
    off = 0
    yield 0, 0
    for frame in itertools.count(start=1):
        off += random.uniform(3, 6)
        if off >= 360:
            return
        print(off)
        yield frame, off

OFF = 4

with open('cube_holder_spin.smd', 'w') as f:
    f.write(header)
    
    for time, off in frames():
        f.write(frame_temp.format(
            time=time,
            z=round(math.sin(math.radians(off)), 6),
            spin=round(math.radians((-off * 2) % 360), 6),
            )
        )
    f.write("end")

header = """\
version 1
nodes
0 "root" -1
1 "cube"  0
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0.000000\t0 0 0
 1  0 0 {z}\t0 0 0
"""

with open('cube_holder_holo_move.smd', 'w') as f:
    f.write(header)
    
    for time, off in frames():
        f.write(frame_temp.format(
            time=time,
            z=round(0.4 * math.sin(math.radians(off * 4)), 6),
            #spin=round(math.radians(5 * math.sin(math.radians(off * 2))), 6),
            )
        )
    f.write("end")