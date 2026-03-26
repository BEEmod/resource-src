"""Generates animations for conveyor belts.
"""
import math
import os.path

header = """\
version 1
nodes
0 "root" -1
{bones}
end
skeleton
"""

frame_temp = """\
time {time}
0\t0 0 0\t0 0 0
{frames}
"""

print(header)
print(frame_temp)

ANIMS = 25
FPS: int = 60
OFFSET = 128
BUFFER = 2

def build_frames(file, size):
    true_size = size + 384
    segments: int = int(true_size / 128)
    frame_count: int = int(true_size / 128) * FPS
    for i in range(frame_count):
        frames = ''
        for s in range(segments):
            step = (i * 128/FPS)
            pos = (s * 128) + OFFSET
            next_pos = round((pos + step), 6) % true_size
            
            segment_list["segment{:02d}".format(s+1)] = next_pos

        for x in range(1, 28+1):
            frame_pos = segment_list[f"segment{x:02d}"]
            if frame_pos < BUFFER: frame_pos = BUFFER
            if frame_pos > true_size - BUFFER: frame_pos = true_size - BUFFER
            frames += f'{x}\t{frame_pos:.6f} 0 0\t0 0 0'
            if x < 28:
                frames += "\n"

        file.write(frame_temp.format(time=i, frames=frames))
    pass
            

segment_list = {}
segment_bones = ''
for x in range(1, 28+1):
    segment_list["segment{:02d}".format(x)] = 0
    segment_bones += f'{x} "segment{x:02d}" 0'
    if x < 28:
        segment_bones += "\n"

for i in range(0, ANIMS+1):
    size = i * 128
    if i < 1:
        file = f"anims/Idle.smd"
    else:
        file = f"anims/Idle_{size}.smd"

    if i < 1:
        segments = 0
    else:
        segments = i + 3
    frames = ''

    for s in range(segments):
        pos = (s * 128) + OFFSET
        segment_list["segment{:02d}".format(s+1)] = pos

    print('Making', file)
    with open(file, 'w') as f:
        f.write(header.format(bones = segment_bones))
        for x in range(1, 28+1):
            frame_pos = segment_list[f"segment{x:02d}"]
            if frame_pos < BUFFER: frame_pos = BUFFER
            if frame_pos > (28 * 128) - BUFFER: frame_pos = (28 * 128) - BUFFER
            frames += f'{x}\t{frame_pos:.6f} 0 0\t0 0 0'
            if x < 28:
                frames += "\n"
        f.write(frame_temp.format(time=0, frames=frames))
        f.write("end")

for x in range(1, 28+1):
    segment_list["segment{:02d}".format(x)] = 0

for i in range(1, ANIMS+1):
    size = i * 128
    file = f"anims/Move_{size}.smd"

    print('Making', file)
    with open(file, 'w') as f:
        f.write(header.format(bones = segment_bones))
        build_frames(f, size)
        f.write("end")