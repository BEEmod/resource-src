"""A randomly rotating box, used for tube items
"""
import os.path
import random
import math

header = """\
version 1
nodes
0 "rot"  -1
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t{pit} {yaw} {rol}
"""

def limit(x, num):
    return min(num, max(-num, x))

def iter_speed(old, mom, lim):
    old += random.randint(-mom, mom)
    return limit(old, lim)


for index in range(1, 50 + 1):
    print('Making #' + str(index))
    with open('anim_{}.smd'.format(index), 'w') as f:
        f.write(header)
        
        frames = []
        
        x = y = z = 0
        x_sp = y_sp = z_sp = 0
        pit = yaw = rol = 0
        pit_sp = yaw_sp = rol_sp = 0
        
        for _ in range(40):
            
            pit_sp = iter_speed(pit_sp, 10, 50)
            pit = (pit + pit_sp) % 360
            
            yaw_sp = iter_speed(y_sp, 10, 50)
            yaw = (yaw + yaw) % 360
            
            rol_sp = iter_speed(rol_sp, 10, 50)
            rol = (rol + rol_sp) % 360
            
            frames.append((x, y, z, pit, yaw, rol))
        # Run forward then backward, this ensures all anims start and end at 0 0 0,
        # which makes transitions seamless.
        frames += reversed(frames)
        
        for time, (x, y, z, pit, yaw, rol) in enumerate(frames):
            f.write(frame_temp.format(
                time=time, 
                x=x,
                y=y,
                z=z,
                pit=round(math.radians(pit), 6),
                yaw=round(math.radians(yaw), 6),
                rol=round(math.radians(rol), 6),
                )
            )
        f.write("end")
