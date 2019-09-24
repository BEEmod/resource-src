"""Convert the templates in 50s/ into full signage materials.

"""
from PIL import Image, ImageDraw, ImageColor
from pathlib import Path
import perlin
import random
import subprocess
import os

img: Image.Image

SIZE = 128, 128

ETCH_COLOR_R = 175
ETCH_COLOR_G = 170
ETCH_COLOR_B = 165

SPINS = (
    None,
    Image.FLIP_LEFT_RIGHT,
    Image.FLIP_TOP_BOTTOM,
    Image.ROTATE_90,
    Image.ROTATE_180,
    Image.ROTATE_270,
    Image.TRANSPOSE,
    Image.TRANSVERSE,
)

with open('template_50s_bg.png', 'rb') as f:
    img = Image.open(f)
    TEMPLATE_BG = img.convert('RGB')

with open('template_50s_alpha.png', 'rb') as f:
    img = Image.open(f)
    TEMPLATE_ALPHA = img.convert('L')


def make_sign(template: Image.Image) -> Image.Image:
    """Generate the signage using the given template."""
    template = template.resize(SIZE, Image.BICUBIC)
    if template.mode == 'RGBA':
        template = template.split()[3]
    else:
        template = template.convert('L')

    BORDER = 6
    mask = Image.new('L', SIZE)
    middle = (BORDER, BORDER, 128-BORDER, 128-BORDER)
    mask.paste(template.crop(middle), middle)

    etching = Image.new('RGB', SIZE, (ETCH_COLOR_R, ETCH_COLOR_G, ETCH_COLOR_B))

    per_r = perlin.SimplexNoise(32)
    per_g = perlin.SimplexNoise(32)
    per_b = perlin.SimplexNoise(32)

    for x in range(128):
        for y in range(128):
            etching.putpixel((x, y), (
                int(round(ETCH_COLOR_R + 5 * per_r.noise2(5 * x, 5 * y))),
                int(round(ETCH_COLOR_G + 5 * per_g.noise2(5 * x, 5 * y))),
                int(round(ETCH_COLOR_B + 5 * per_b.noise2(5 * x, 5 * y))),
            ))

    spin = random.choice(SPINS)
    if spin is not None:
        color = TEMPLATE_BG.transpose(spin)
    else:
        color = TEMPLATE_BG.copy()

    color.paste(etching, (0, 0, 128, 128), mask)

    return Image.merge('RGBA', color.split() + (TEMPLATE_ALPHA, ))


DEST = Path('../sign_gen_50s/')
DEST.mkdir(parents=True, exist_ok=True)

try:
    VTEX = Path(os.environ['PORTAL_2_LOC'], 'bin', 'vtex.exe')
except KeyError:
    VTEX = None
    print('No VTEX!')


for fname in Path('../50s/Wii2/').rglob('*.png'):
    with fname.open('rb') as f:
        img = Image.open(f)
        img.load()
    sign = make_sign(img)
    dest = DEST / f'{fname.stem}.tga'
    sign.save(dest)

    with dest.with_suffix('.txt').open('w') as f:
        f.write('anisotropic 1\n')  # Ensures it looks correct from grazing angles.

    if VTEX is not None:
        subprocess.call([
            str(VTEX),
            '-dontusegamedir',
            '-nopause',
            str(dest.absolute().resolve()),
        ])
