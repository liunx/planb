import sys
import cv2 as cv
import numpy as np
import random as rng
import cvui
from tools import histogram_calc
from dnn_models import model_ssd_inception_v2_coco
from aruco import ARUCO_DICT

rng.seed(12345)


class Tracker:
    def __init__(self, markers):
        self.trackers = {}
        self.markers = markers

    def add(self, frame, bbox, marker_id):
        tracker = cv.TrackerKCF_create()
        tracker.init(frame, bbox)
        self.trackers[marker_id] = tracker

    def draw(self, frame, bbox):
        cvui.rect(frame, bbox[0], bbox[1], bbox[2], bbox[3], 0xff0000)

    def update(self, frame):
        d = {}
        for k, tracker in self.trackers.items():
            ok, bbox = tracker.update(frame)
            if ok:
                d[k] = tracker
                self.draw(frame, bbox)
            else:
                self.markers.remove(k)
        self.trackers = d


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
    features = cv.goodFeaturesToTrack(src_gray, maxCorners,
                                      qualityLevel, minDistance, None, blockSize=blockSize,
                                      gradientSize=gradientSize, useHarrisDetector=useHarrisDetector, k=k)
    return features


def draw_features(frame, corners):
    radius = 4
    for i in range(corners.shape[0]):
        cv.circle(frame, (int(corners[i, 0, 0]), int(corners[i, 0, 1])), radius, (rng.randint(
            0, 256), rng.randint(0, 256), rng.randint(0, 256)), cv.FILLED)


def create_marker(frame, features):
    # triple points form a plane
    y, x, _ = frame.shape
    center = np.array((int(y / 2), int(x / 2)))
    pos_dict = {}
    for i in range(features.shape[0]):
        pos = np.array((int(features[i, 0, 0]), int(features[i, 0, 1])))
        _sum = np.square(pos - center).sum()
        pos_dict[_sum] = pos
    keys = list(pos_dict.keys())
    keys.sort()
    p1 = pos_dict[keys[0]]
    p2 = pos_dict[keys[1]]


def main():
    win_name = 'Finder'
    vc = cv.VideoCapture(sys.argv[1])
    cv.namedWindow(win_name)
    cvui.init(win_name)
    class_names, model = model_ssd_inception_v2_coco()
    aruco_dict = cv.aruco.Dictionary_get(ARUCO_DICT['DICT_4X4_50'])
    aruco_params = cv.aruco.DetectorParameters_create()
    markers = []
    tracker = Tracker(markers)
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
            if score < 0.6:
                continue
            x, y, w, h = box
            cname = class_names[classid[0]]
            box_frame = frame[y:y+h, x:x+w]
            # step 1: search aruco id
            corners, ids, rejected = cv.aruco.detectMarkers(
                box_frame, aruco_dict, parameters=aruco_params)
            if len(corners) > 0:
                ids = ids.flatten()
                # Loop over the detected ArUCo corners
                for (_corner, _id) in zip(corners, ids):
                    if _id not in markers:
                        features = find_good_features(box_frame)
                        bbox = create_marker(box_frame, features)
                        tracker.add(frame, bbox, _id)
                        markers.append(_id)
        # =============================
        tracker.update(frame)
        cvui.imshow(win_name, _frame)
        ch = cv.waitKey(1)
        if ch == ord('q'):
            break
        elif ch == ord(' '):
            pause = not pause


if __name__ == '__main__':
    main()
