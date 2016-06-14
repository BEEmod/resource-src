"""Reverse the direction of 'close', to make 'open'."""
header = []
frames = {}
with open('close.smd') as f:
    for line in f:
        header.append(line)
        if 'skeleton' in line:
            break
    cur_frame = []
    ind = 0
    for line in f:
        if 'time' in line or 'end' in line and cur_frame:
            
            frames[60-ind] = cur_frame
            cur_frame = []
            
        if 'time' in line:
            ind = int(line.replace('time', '').strip())
            continue
        
        cur_frame.append(line)
    
with open('open.smd', 'wt') as f:
    for line in header:
        f.write(line)
    for frame in range(61):
        f.write('  time {}\n'.format(frame))
        for line in frames[frame]:
            f.write(line)
    f.write('end')