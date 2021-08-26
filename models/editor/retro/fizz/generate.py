from srctools import Vec
from math import pi

for name in ('idle.smd', 'explodeIn.smd', 'explodeOut.smd'):
	with open('tag_gel_fizzler/gfizzler_off_anim_@' + name, 'r') as inp, open('under_fizz_anim_' + name, 'w') as out:
	    # Skip past the initial setup part
	    for line in inp:
	        out.write(line)
	        if 'skeleton' in line:
	            break
	            
	    for line in inp:
	        if 'time' in line:
	            out.write(line)
	            continue
	        if 'end' in line:
	            out.write('end\n')
	            break
	        bone, x, y, z, pitch, yaw, roll = map(float, line.split())
	        
	        x, y, _ = Vec(x, y, z).rotate_by_str('0 -90 0')
	        # yaw -= pi / 2
	        
	        
	        out.write("    {:.0f} {:.6f} {:.6f} {:.6f} {:.6f} {:.6f} {:.6f}\n".format(
	            bone, x, y, z, pitch, yaw, roll
	        ))
	    print('Done!')