from PIL import Image
from pathlib import Path
import itertools

img = Image.open('signage_70s.png')

folder = Path('F:/Git/BEE2-items/packages/signage/resources/BEE2/items/70s/BEE/signage')

num = itertools.count(1)

for x in range(0, 1024, 128):
	for y in range(0, 1024, 128):
		sheet = img.crop((x, y, x+128, y+128))
		sheet = sheet.resize((64, 64), Image.BICUBIC)
		ind = next(num)
		print(num)
		sheet.save(str(folder / f'sign_{ind}.png'))

