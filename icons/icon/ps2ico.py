import argparse
import imageio

tParser = argparse.ArgumentParser(description='Generate a hash file for jonchki.')
tParser.add_argument('input')
tParser.add_argument('output')
tArgs = tParser.parse_args()

img = imageio.imread(tArgs.input)
imageio.imwrite(tArgs.output, img)
