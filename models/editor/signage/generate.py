"""Generates animations for the signage item model.
"""
import math
import os.path

header = """\
version 1
nodes
0 "base"    -1
1 "cover_n"  0
2 "cover_s"  0
3 "cover_e"  0
4 "cover_w"  0
5 "holo"     0
6 "holo_nw"  5
7 "holo_sw"  5
8 "holo_ne"  5
9 "holo_se"  5
end
skeleton
"""

frame_temp = """\
time {time}
 0  0 0 0\t0 0 0
 1  0 {n_cover} 0\t0 0 0
 2  0 {p_cover} 0\t0 0 0
 3  {n_cover} 0 0\t0 0 0
 4  {p_cover} 0 0\t0 0 0
 5  0 {n_holo_shift} {p_holo_shift}\t 0 0 0
 6  {p_holo} {n_holo} 0\t0 0 0
 7  {p_holo} {p_holo} 0\t0 0 0
 8  {n_holo} {n_holo} 0\t0 0 0
 9  {n_holo} {p_holo} 0\t0 0 0
"""

COVER_FRAME = [0, 4, 8, 12] + [12] *  9
HOLO_SHIFT = [0] * 4 + [4, 12, 20, 28, 34, 42] + [48] * 3
HOLO_HORIZ = [0] * 7 + [4, 12, 20, 30, 41, 52]

HOLO_HORIZ_RET = [52, 41, 30, 20, 12, 4] + [0] * 3
HOLO_SHIFT_RET = [48, 42, 34, 28, 20, 12, 4] + [0] * 2
COVER_FRAME_RET = [12] *  6 + [8, 4, 0]

assert len(COVER_FRAME) == len(HOLO_SHIFT) == len(HOLO_HORIZ), (len(COVER_FRAME), len(HOLO_SHIFT), len(HOLO_HORIZ))
assert len(COVER_FRAME_RET) == len(HOLO_SHIFT_RET) == len(HOLO_HORIZ_RET), (len(COVER_FRAME_RET), len(HOLO_SHIFT_RET), len(HOLO_HORIZ_RET))

for file, cover, shift, horiz in [
        ('anim_expand.smd', COVER_FRAME, HOLO_SHIFT, HOLO_HORIZ),
        ('anim_contract.smd', COVER_FRAME_RET, HOLO_SHIFT_RET, HOLO_HORIZ_RET),
        ('anim_out.smd', COVER_FRAME[-1:], HOLO_SHIFT[-1:], HOLO_HORIZ[-1:]),
        ('anim_idle.smd', COVER_FRAME[:1], HOLO_SHIFT[:1], HOLO_HORIZ[:1]),
        ]:
    print('Making', file)
    with open(file, 'w') as f:
        f.write(header)
        for time, (f_cover, f_shift, f_horiz) in enumerate(zip(cover, shift, horiz)):
            f.write(frame_temp.format(
                time=time, 
                p_cover=f_cover,
                n_cover=-f_cover,
                p_holo_shift=f_shift,
                n_holo_shift=-f_shift,
                p_holo=f_horiz,
                n_holo=-f_horiz,
                )
            )
        f.write("end")