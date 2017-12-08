"""Generates animations for rotating timer dial.
"""
import math

header = """\
version 1
nodes
0 "root" -1
1 "rot" 0
end
skeleton
"""

frame_temp = """\
time {time}
0  0 0 0\t0.000000 0 0
1  0 0 0\t1.570796 0 {rot}
"""
FPS = 8

anim_temp = """\
$Sequence "{tim}" {{
	"anims/timer_{tim:02}.smd"
	fps {fps}
}}

"""

with open('anims.qci', 'w') as anim:
	for delay in range(1, 31):
	    print('Making t =', delay)
	    with open('anims/timer_{:02}.smd'.format(delay), 'w') as f:
	        f.write(header)
	        for time, dist in enumerate(range(delay * FPS + 1)):
	            f.write(frame_temp.format(
	                time=time,
	                rot=round(-2 * dist * math.pi / delay / FPS, 6),
	            ))
	        f.write("end")
	    anim.write(anim_temp.format(tim=delay, fps=FPS))
