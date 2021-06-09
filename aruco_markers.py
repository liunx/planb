import argparse
import cv2 as cv
import numpy as np


def main():
    parser = argparse.ArgumentParser(
        description='Augmented Reality using Aruco markers in OpenCV')
    parser.add_argument('--dict', type=str, default='4x4_50',
                        help='Predefined markers dictionaries/sets.')
    parser.add_argument('--index', type=int, default=0,
                        help='index to generate.')
    parser.add_argument('--len', type=int, default=400,
                        help='length of image.')
    args = parser.parse_args()
    dict_type = cv.aruco.DICT_4X4_50
    if args.dict == '4x4_50':
        dict_type = cv.aruco.DICT_4X4_50
    _len = args.len
    dictionary = cv.aruco.Dictionary_get(dict_type)
    markerImage = np.zeros((_len, _len), dtype=np.uint8)
    markerImage = cv.aruco.drawMarker(
        dictionary, args.index, _len, markerImage, 1)
    cv.imwrite("marker{:03}.png".format(args.index), markerImage)


if __name__ == '__main__':
    main()
