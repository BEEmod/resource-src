"""Generates animations for the circuit breaker.

They are simple rotation animations, with a brief 'bounce' at the end of the turns.
"""
import math
import os.path

header = """\
version 1
nodes
  0 "rotation" -1
end
skeleton
"""

time_part = """\
  time {time}
	0 0 0 0 {rot} 0 0
"""

DN_FRM = 12.4

# Forward + bounce
open_frames = list(range(0, 13)) + [DN_FRM, 12, DN_FRM]

# Backward + bounce
close_frames = [DN_FRM] + list(range(12, -1, -1)) + [1, 0]

for file, frames in [
        ('open_anim.smd', open_frames),
        ('close_anim.smd', close_frames),
        ('idle_up.smd', [0]),
        ('idle_down.smd', [DN_FRM]),
        # Open, pause for 0.5seconds (frame rate/2), then close.
        ('press_anim.smd', open_frames + ([DN_FRM]*12) + close_frames),
        ]:
    print('Making', file)
    print('Frames:', frames)
    with open(os.path.join('anim', file), 'w') as f:
        f.write(header)
        for time, frame in enumerate(frames):
            # 300 degrees/second
            # 160 degrees total rotation
            new_ang = math.radians((frame*24/300) * 160)
            f.write(time_part.format(
                time=time, 
                rot=round(new_ang, 6),
                )
            )
        f.write("end")