import glob
import argparse
from os import path
import xmltodict
import cv2 as cv


def draw_bbox(frame, dict_object):
    label = dict_object['name']
    bbox = dict_object['bndbox']
    p1 = (int(bbox['xmin']), int(bbox['ymin']))
    p2 = (int(bbox['xmax']), int(bbox['ymax']))
    cv.rectangle(frame, p1, p2, (255, 0, 0), 2, 1)
    cv.putText(frame, label, (p1[0], p1[1] + 10),
               cv.FONT_HERSHEY_SIMPLEX, 0.5, (255, 0, 255), 2)


def main():
    parser = argparse.ArgumentParser(
        description='Script for editing custom dataset.')
    parser.add_argument('--data_dir', default='data',
                        type=str, help='Dataset directory.')
    args = parser.parse_args()
    data_dir = args.data_dir
    annotation_dir = data_dir + '/Annotations'
    image_dir = data_dir + '/JPEGImages'
    images = glob.glob(image_dir + '/*.jpg')
    for image in images:
        frame = cv.imread(image)
        jpg = path.basename(image)
        _id = jpg.split('.')[0]
        dat = None
        with open(annotation_dir + f'/{_id}.xml') as f:
            dat = xmltodict.parse(f.read())
        _object = dat['annotation']['object']
        if isinstance(_object, list):
            for _obj in _object:
                draw_bbox(frame, _obj)
        else:
            draw_bbox(frame, _object)
        cv.imshow('Viewer', frame)
        ch = cv.waitKey(0)
        if ch == ord('q'):
            break


if __name__ == '__main__':
    main()
