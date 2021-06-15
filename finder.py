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
        for k,tracker in self.trackers.items():
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
    corners = cv.goodFeaturesToTrack(src_gray, maxCorners, qualityLevel, minDistance, None,
                                     blockSize=blockSize, gradientSize=gradientSize, useHarrisDetector=useHarrisDetector, k=k)
    return corners


def draw_features(frame, corners):
    radius = 4
    for i in range(corners.shape[0]):
        cv.circle(frame, (int(corners[i, 0, 0]), int(corners[i, 0, 1])), radius, (rng.randint(
            0, 256), rng.randint(0, 256), rng.randint(0, 256)), cv.FILLED)


def aruco_marker(frame, aruco_dict, aruco_params):
    corners, ids, rejected = cv.aruco.detectMarkers(frame, aruco_dict, parameters=aruco_params)
    if len(corners) > 0:
        ids = ids.flatten()
        # Loop over the detected ArUCo corners
        for (markerCorner, markerID) in zip(corners, ids):
            # Extract the marker corners (which are always returned
            # in top-left, top-right, bottom-right, and bottom-left order)
            corners = markerCorner.reshape((4, 2))
            (topLeft, topRight, bottomRight, bottomLeft) = corners
            # Convert each of the (x, y)-coordinate pairs to integers
            topRight = (int(topRight[0]), int(topRight[1]))
            bottomRight = (int(bottomRight[0]), int(bottomRight[1]))
            bottomLeft = (int(bottomLeft[0]), int(bottomLeft[1]))
            topLeft = (int(topLeft[0]), int(topLeft[1]))
            # Draw the bounding box of the ArUCo detection
            cv.line(frame, topLeft, topRight, (0, 255, 0), 2)
            cv.line(frame, topRight, bottomRight, (0, 255, 0), 2)
            cv.line(frame, bottomRight, bottomLeft, (0, 255, 0), 2)
            cv.line(frame, bottomLeft, topLeft, (0, 255, 0), 2)
            # Compute and draw the center (x, y)-coordinates of the ArUco marker
            cX = int((topLeft[0] + bottomRight[0]) / 2.0)
            cY = int((topLeft[1] + bottomRight[1]) / 2.0)
            cv.circle(frame, (cX, cY), 4, (0, 0, 255), -1)
            # Draw the ArUco marker ID on the frame
            cv.putText(frame, str(markerID), (topLeft[0], topLeft[1] - 15),
                        cv.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)


def find_marker(frame, corners):
    y, x, _ = frame.shape
    center  = np.array((int(y / 2), int(x / 2)))
    _sums = {}
    for i in range(corners.shape[0]):
        pos = (int(corners[i, 0, 0]), int(corners[i, 0, 1]))
        _sum = np.square(np.array((pos) - center)).sum()
        _sums[_sum] = pos
    keys = list(_sums.keys())
    _min = min(keys)
    pos = _sums[_min]
    return (pos[0] - 10, pos[1] - 10, pos[0] + 10, pos[1] + 10)


def main():
    win_name = 'Finder'
    vc = cv.VideoCapture(sys.argv[1])
    cv.namedWindow(win_name)
    cvui.init(win_name)
    class_names, model = model_ssd_inception_v2_coco()
    detector = Detector()
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
            #frame = cv.resize(frame, (int(w/2), int(h/2)))
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
            corners, ids, rejected = cv.aruco.detectMarkers(box_frame, aruco_dict, parameters=aruco_params)
            if len(corners) > 0:
                ids = ids.flatten()
                # Loop over the detected ArUCo corners
                for (markerCorner, markerID) in zip(corners, ids):
                    if markerID not in markers:
                        features = find_good_features(box_frame)
                        bbox = find_marker(box_frame, features)
                        tracker.add(frame, bbox, markerID)
                        markers.append(markerID)

        tracker.update(frame)
        cvui.imshow(win_name, _frame)
        ch = cv.waitKey(1)
        if ch == ord('q'):
            break
        elif ch == ord(' '):
            pause = not pause


if __name__ == '__main__':
    main()
