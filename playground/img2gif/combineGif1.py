 import ImageSequence
 import Image
 import gifmaker
 sequence = []

 im = Image.open(....)

 # im is your original image
 frames = [frame.copy() for frame in ImageSequence.Iterator(im)]

 # write GIF animation
 fp = open("out.gif", "wb")
 gifmaker.makedelta(fp, frames)
 fp.close()