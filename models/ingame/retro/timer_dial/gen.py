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

anim_fwd_temp = """\
$Sequence "{tim}" {{
	"anims/timer_fwd_{tim:02}.smd"
	fps {fps}
}}

"""
anim_rev_temp = """\
$Sequence "rev_{tim}" {{
	"anims/timer_rev_{tim:02}.smd"
	fps {fps}
}}

"""

with open('anims.qci', 'w') as anim:
	for delay in range(1, 31):
	    print('Making t =', delay)
	    with open('anims/timer_fwd_{:02}.smd'.format(delay), 'w') as fwd, open('anims/timer_rev_{:02}.smd'.format(delay), 'w') as rev:
	        fwd.write(header)
	        rev.write(header)
	        for time, dist in enumerate(range(delay * FPS + 1)):
	            fwd.write(frame_temp.format(
	                time=time,
	                rot=round(-2.0 * dist * math.pi / delay / FPS, 6),
	            ))
	            rev.write(frame_temp.format(
	                time=time,
	                rot=round(+2.0 * dist * math.pi / delay / FPS, 6),
	            ))
	        fwd.write("end")
	        rev.write("end")
	    anim.write(anim_fwd_temp.format(tim=delay, fps=FPS))
	for delay in range(1, 31):
	    anim.write(anim_rev_temp.format(tim=delay, fps=FPS))
