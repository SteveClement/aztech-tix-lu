#!/usr/bin/env python3

from PIL import Image, ImageFont, ImageDraw
import os

img = Image.open("sample_in.png")
draw = ImageDraw.Draw(img)
fonts_path = os.path.join(os.path.dirname(os.path.dirname(__file__)), 'fonts')
#font = ImageFont.truetype(os.path.join(fonts_path, 'sans_serif.ttf'), 24)
font = ImageFont.truetype(os.path.join(fonts_path, 'Arial.ttf'), 24)
font = ImageFont.truetype("Arial.ttf", 32)
draw.text((0, 0),"Sample Text",(0,0,0),font=font)
img.save('sample_out.png')
