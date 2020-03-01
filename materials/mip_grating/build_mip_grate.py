"""Build a custom grating VTF which resizes as you shrink it onscreen."""
from srctools.vtf import VTF
from typing import Dict, Tuple
from pprint import pformat

PATH = 'metalgrate018_mip{}.vtf'
MIPS = 8
FULL_MIPS = 2


def load_vtf(mipmap: int) -> Dict[int, Tuple[str, int, int]]:
    """Load the specified mipmap, pulling out the compressed frames directly.

    Returns a {mip: (fname, off, size)} dict.
    """
    fname = PATH.format(mipmap)
    with open(fname, 'rb') as f, VTF.read(f) as vtf:
        return {
            mip: (
                fname,
                frame._fileinfo[1],
                frame._fileinfo[2].frame_size(frame.width, frame.height),
            )
            for (find, cube, mip), frame in vtf._frames.items()
        }

orig_vtf = mip_vtf = load_vtf(0)
new_vtf = orig_vtf.copy()
mip_i = 0
for i in range(FULL_MIPS - 1, MIPS):
    try:
        mip_vtf = load_vtf(i - (FULL_MIPS - 1))
        mip_i = i - 1
        print(f'Mip {i}: {pformat(mip_vtf)}')
    except FileNotFoundError:
        pass
    new_vtf[i] = mip_vtf[i - mip_i]

print('\n\nNew', pformat(new_vtf))

with open(PATH.format('0'), 'rb') as full:
    data = bytearray(full.read())
for [
    (dest_fname, dest_off, dest_size),
    (src_fname, src_off, src_size),
] in zip(orig_vtf.values(), new_vtf.values()):
    assert src_size == dest_size, ((src_fname, src_off, src_size), (dest_fname, dest_off, dest_size))
    with open(src_fname, 'rb') as src:
        src.seek(src_off)
        data[dest_off:dest_off+dest_size] = src.read(src_size)

with open(PATH.format('ped'), 'wb') as dest:
    dest.write(data)
