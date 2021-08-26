"""Generates animations for the circuit breaker.

They are simple rotation animations, with a brief 'bounce' at the end of the turns.
"""
import math
import os.path

header = """\
version 1
nodes
0 "base" -1
1 "vert" 0
2 "north" 1
3 "south" 1
4 "east" 1
5 "west" 1
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 0
 1  0 0 {vert}\t0 0 0
 2  0 {horiz} 0\t0 0 0
 3  0 {nhoriz} 0\t0 0 0
 4  {horiz} 0 0\t0 0 0
 5  {nhoriz} 0 0\t0 0 0
"""

H_FRAMES = range(0, 38, 4)
V_FRAMES = [0, 4] + list(range(4, 64, 8))

assert len(H_FRAMES) == len(V_FRAMES)

for file, horiz, vert in [
        ('anim_expand.smd', H_FRAMES, V_FRAMES),
        ('anim_contract.smd', H_FRAMES[::-1], V_FRAMES[::-1]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, (h_frame, v_frame) in enumerate(zip(horiz, vert)):
            f.write(frame_temp.format(
                time=time, 
                vert=v_frame,
                horiz=h_frame,
                nhoriz=-h_frame,
                )
            )
        f.write("end")