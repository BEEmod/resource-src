"""Generates animations for Fluro Light Strips.
"""
import math
import os.path

header = """\
version 1
nodes
0 "cage"   -1
1 "fixture" 0
2 "wire_n"  0
3 "wire_s"  0
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 0
 1  0 0 {fix}\t0 0 0
 2  {pwire} 0 0\t0 0 0
 3  {nwire} 0 0\t0 0 0
"""

LIGHT = [0, 0, 0, 0, 0, 4, 8, 16]
WIRE = [0, 2, 4, 8, 8, 8, 8, 8]

LIGHT_REV  = [16, 8, 4, 0, 0]
WIRE_REV = [8, 8, 4, 2, 0]

assert len(LIGHT) == len(WIRE)
assert len(LIGHT_REV) == len(WIRE_REV)

for file, light, wire, in [
        ('anim_expand.smd', LIGHT, WIRE),
        ('anim_contract.smd', LIGHT_REV, WIRE_REV),
        ('anim_out.smd', [16], [8]),
        ('anim_idle.smd', [0], [0]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, (f_light, f_wire) in enumerate(zip(light, wire)):
            f.write(frame_temp.format(
                time=time,
                fix=f_light,
                pwire=f_wire,
                nwire=-f_wire,
            ))
        f.write("end")
