"""Generates animations for 50s crushers.
"""
import math
import os.path
from collections import namedtuple
from srctools import Vec

header = """\
version 1
nodes
0 "rot" -1
1 "piston" 0
2 "piston_end" 1
3 "marker" -1
end
skeleton
"""

frame_temp = """\
time {time}
0  0 -64 0    {rot} 0 0
1  0 106.5 -10.5  {pist_rot} 0 0
2  0 {len} 0       0 0 0
3  {marker} 0 0 0
"""

seq_temp = """
$sequence "{anim}" {{
	"anim/{anim}.smd"
	fps 30
"""

ANGLES = [30, 45, 60, 90]

Anim = namedtuple('Anim', 'name rot_sound')
sequences = []

FRAME = 0
SPEED = 5
f = None

def pose(f, rot):
    global FRAME
       
    # Calculate the piston's rotation.
    
    # First find the real position of the piston hinge.
    hinge_pos = Vec(-43, 0, 10.5)
    hinge_pos.x -= 64
    hinge_pos.rotate(float(rot), 0, 0)
    hinge_pos.x += 64
    
	# Where we want the end of the piston to be.
    anchor_point = Vec(z=-96, x=rot*1.5 + 96)
    
    piston_off = hinge_pos - anchor_point
    print(piston_off)
    piston_rot = math.degrees(math.atan2(piston_off.z, -piston_off.x))
    
    f.write(frame_temp.format(
        time=FRAME,
        rot=-round(math.radians(rot), 6),
        # Cancel the effect of rot on pist_rot
        pist_rot=round(math.radians((piston_rot + rot) % 360), 6),
        len=-piston_off.mag(),
        marker=Vec(z=anchor_point.z, y=-anchor_point.x),
    ))
    FRAME += 1


def rotate(f, start, stop):
    if start > stop:
        dist = range(start, stop - 1, -SPEED)
    else:
        dist = range(start, stop + 1, SPEED)
    for rot in dist:
        pose(f, rot)
    pose(f, rot)

with open('anim/idle.smd', 'w') as f:
    f.write(header)
    pose(f, 0)
    f.write("end")
    # Don't add to sequences, we want it first.

for angle_name in ANGLES:
    angle = 90 - angle_name
    
    FRAME = 0
    print('Making', angle_name, 'open')
    with open('anim/open_{}.smd'.format(angle_name), 'w') as f:
        f.write(header)
        rotate(f, 0, angle)
        f.write("end")
    
    sequences.append(Anim(
        name='open_' + str(angle_name),
        rot_sound=True,
    ))
    
    FRAME = 0
    print('Making', angle_name, 'close')
    with open('anim/close_{}.smd'.format(angle_name), 'w') as f:
        f.write(header)
        rotate(f, angle, 0)
        f.write("end")
    sequences.append(Anim(
        name='close_' + str(angle_name),
        rot_sound=True,
    ))
    
    print('Making', angle_name, 'idle')
    with open('anim/idle_{}.smd'.format(angle_name), 'w') as f:
        f.write(header)
        pose(f, angle)
        f.write("end")
    sequences.append(Anim(
        name='idle_' + str(angle_name),
        rot_sound=False,
    ))
    
with open('covered_panel_temp.qci') as inp, open('covered_panel.qc', 'w') as out:
    for line in inp:
        out.write(line)
        
    sequences.sort(key=Anim.name.__get__)
    sequences.insert(0, Anim(
        name="idle",
        rot_sound=False,
    ))
    
    for seq in sequences:
        out.write(seq_temp.format(
            anim=seq.name,
        ))
        if seq.rot_sound:
            out.write('\t{ event AE_CL_PLAYSOUND 0 "World.a3EndElevatorArrive" }\n')
        out.write('}\n')
        