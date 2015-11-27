"""Generates animations for 50s crushers.
"""
import math
import os.path

header = """\
version 1
nodes
0 "base"       -1
1 "crusher"     0
2 "pist_bottom" 0
3 "pist_top"    0
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 0
 1  0 0 {z}\t0 0 0
 2  0 0 {pb}\t0 0 0
 3  0 0 {pt}\t0 0 0
"""
# We need it to be 22 units short from the full 256 (234)

EXP_OUT = [
	max(x**2 - 22/16 * x, 0)
	for x in
    range(1, 17)
]
EXP_IN = list(range(234, 0, -16)) + [0]

EXP_OUT_PB = [
	(x * 96/16)
	for x in range(16)
]
EXP_OUT_PT = [
	(x * 80/16)
	for x in range(16)
]

# They must have the same length!
assert len(set(map(len, [EXP_OUT, EXP_OUT_PB, EXP_OUT_PT, EXP_IN]))) == 1

for file, dist, pb, pt in [
        ('anim_idle.smd', [0], [0], [0]),
        ('anim_expand.smd', EXP_OUT, EXP_OUT_PB, EXP_OUT_PT),
        ('anim_out.smd', [234], [96], [80]),
        ('anim_contract.smd', EXP_IN, EXP_OUT_PB[::-1], EXP_OUT_PT[::-1]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, (f_dist, f_pb, f_pt) in enumerate(zip(dist, pb, pt)):
            f.write(frame_temp.format(
                time=time,
                z=f_dist,
                pb=f_pb,
                pt=f_pt + f_pb,
            ))
        f.write("end")
