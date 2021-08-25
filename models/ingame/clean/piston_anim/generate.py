import os
import shutil

MOVE_PER_FRAME = 4
PIST_SPEED = 150

seq_str = '''$sequence "{bot!s}-{top!s}" "anims/anim_{bot!s}_{top!s}.smd" {{
    fps {fps}
}}

'''

anim_header = '''version 1
nodes
\t0 "base" -1
\t1 "piston_1" -1
\t2 "piston_2" -1
\t3 "piston_3" -1
\t4 "piston_4" -1
end
skeleton
'''

bone_line = '\t{bone!s} 0 0 {pos!s} 0 0 0\n'

def positions():
    for bottom in range(0,4):
        for top in range(1,5):
            if bottom >= top:
                continue 
            yield bottom, top
  
print("Making sequences!")  
with open('piston_anim.qc', 'w') as file:
    with open('qc_file.qc') as qc:
        for line in qc:
            file.write(line)
    file.write('\n')
    for bottom, top in positions():
        file.write(seq_str.format(
            bot=bottom, 
            top=top,
            fps=PIST_SPEED//MOVE_PER_FRAME,
        ))
        
shutil.rmtree('anims/', ignore_errors=True)
os.mkdir('anims/')
  
print("Making animations!") 

for bottom, top in positions():
    print('making animation {!s} > {!s}'.format(bottom, top))
    with open('anims/anim_{0!s}_{1!s}.smd'.format(bottom, top), 'w') as file:
        file.write(anim_header)
        start_pos = bottom * 128
        end_pos = top * 128
        
        distance = end_pos - start_pos
        for time in range(0, distance+1, MOVE_PER_FRAME):
            file.write('time {!s}\n'.format(
                                            time/MOVE_PER_FRAME))
            if time == 0:
                file.write(
                    '\t0 0 0 0 0 0 0\n'
                )
            for pist in range(1,5):
                file.write(bone_line.format(
                    bone=pist,
                    pos=min(start_pos+time,pist*128),
                    ))
        file.write('end\n')
