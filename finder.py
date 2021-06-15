import sys
import cv2 as cv
import numpy as np
import random as rng
import cvui
from tools import histogram_calc
from dnn_models import model_ssd_inception_v2_coco
from aruco import ARUCO_DICT

rng.seed(12345)


class Detector:
    def __init__(self, min_scores=0.6):
        self.min_scores = min_scores

    def draw_object(self, frame, box):
        cvui.rect(frame, box[0], box[1], box[2], box[3], 0xff0000)

    def process(self, frame, class_name, score, box):
        if score < self.min_scores:
            return
        x, y, w, h = box
        crop_frame = np.copy(frame[y:y+h, x:x+w])
        corners = find_good_features(crop_frame)
        draw_features(frame[y:y+h, x:x+w], corners)
        self.draw_object(frame, box)


def find_good_features(frame):
    # Parameters for Shi-Tomasi algorithm
    maxCorners = 13
    qualityLevel = 0.01
    minDistance = 10
    blockSize = 3
    gradientSize = 3
    useHarrisDetector = False
    k = 0.04
    # Apply corner detection
    src_gray = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
    corners = cv.goodFeaturesToTrack(src_gray, maxCorners, qualityLevel, minDistance, None,
                                     blockSize=blockSize, gradientSize=gradientSize, useHarrisDetector=useHarrisDetector, k=k)
    return corners


def draw_features(frame, corners):
    radius = 4
    for i in range(corners.shape[0]):
        cv.circle(frame, (int(corners[i, 0, 0]), int(corners[i, 0, 1])), radius, (rng.randint(
            0, 256), rng.randint(0, 256), rng.randint(0, 256)), cv.FILLED)


def main():
    win_name = 'Finder'
    vc = cv.VideoCapture(sys.argv[1])
    cv.namedWindow(win_name)
    cvui.init(win_name)
    class_names, model = model_ssd_inception_v2_coco()
    detector = Detector()
    aruco_dict = cv.aruco.Dictionary_get(ARUCO_DICT['DICT_4X4_50'])
    aruco_params = cv.aruco.DetectorParameters_create()
    pause = False
    while True:
        if not pause:
            (grabbed, frame) = vc.read()
            if not grabbed:
                break
            h, w, _ = frame.shape
            frame = cv.resize(frame, (int(w/2), int(h/2)))
            _frame = frame
        else:
            _frame = frame.copy()
        # objects detecting
        classes, scores, boxes = model.detect(_frame, 0.4, 0.4)
        for (classid, score, box) in zip(classes, scores, boxes):
            x, y, w, h = box
            cname = class_names[classid[0]]
            box_frame = frame[y:y+h, x:x+w]
            # step 1: search aruco id
            corners, ids, rejected = cv.aruco.detectMarkers(
                box_frame, aruco_dict, parameters=aruco_params)
            if len(corners) > 0:
                for (markerCorner, markerID) in zip(corners, ids):
                    pass

            detector.process(_frame, cname, score, box)

        cvui.imshow(win_name, _frame)
        ch = cv.waitKey(1)
        if ch == ord('q'):
            break
        elif ch == ord(' '):
            pause = not pause


if __name__ == '__main__':
    main()
