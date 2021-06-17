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


# Parameters for lucas kanade optical flow
lk_params = dict(winSize=(15, 15),
                 maxLevel=2,
                 criteria=(cv.TERM_CRITERIA_EPS | cv.TERM_CRITERIA_COUNT, 10, 0.03))

# Create some random colors
color = np.random.randint(0, 255, (100, 3))


class OpticalFlow:
    def __init__(self) -> None:
        self.flows = []

    def add(self, frame, p0):
        pass

    def update(self, old_gray, frame_gray):
        p1, st, err = cv.calcOpticalFlowPyrLK(
            old_gray, frame_gray, p0, None, **lk_params)
        if p1 is not None:
            good_new = p1[st==1]
            good_old = p0[st==1]


# Parameters for Shi-Tomasi algorithm
feature_params = dict(maxCorners=7, qualityLevel=0.01, minDistance=10,
                      blockSize=3, gradientSize=3, useHarrisDetector=False, k=0.04)


def find_good_features(frame):
    # Apply corner detection
    src_gray = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
    features = cv.goodFeaturesToTrack(src_gray, mask=None, **feature_params)
    return features


def draw_features(frame, features):
    radius = 4
    for i in range(features.shape[0]):
        cv.circle(frame, (int(features[i, 0, 0]), int(features[i, 0, 1])), radius, (rng.randint(
            0, 256), rng.randint(0, 256), rng.randint(0, 256)), cv.FILLED)


def create_marker(frame, features, includes=4, padding=3):
    # triple points form a plane
    h, w, _ = frame.shape
    center = np.array((int(w / 2), int(h / 2)))
    pos_dict = {}
    for i in range(features.shape[0]):
        pos = np.array((int(features[i, 0, 0]), int(features[i, 0, 1])))
        _sum = np.square(pos - center).sum()
        pos_dict[_sum] = pos
    keys = list(pos_dict.keys())
    keys.sort()
    ylist = []
    xlist = []
    for i in range(includes):
        x, y = pos_dict[keys[i]]
        ylist.append(y)
        xlist.append(x)
    y = min(ylist) - padding
    x = min(xlist) - padding
    h = max(ylist) - min(ylist) + padding
    w = max(xlist) - min(xlist) + padding
    return (x, y, w, h)


def main():
    win_name = 'Finder'
    cv.namedWindow(win_name)
    cvui.init(win_name)
    class_names, model = model_ssd_inception_v2_coco()
    aruco_dict = cv.aruco.Dictionary_get(ARUCO_DICT['DICT_4X4_50'])
    aruco_params = cv.aruco.DetectorParameters_create()
    markers = []
    tracker = Tracker(markers)
    pause = False
    debug = False
    # first frame
    vc = cv.VideoCapture(sys.argv[1])
    (grabbed, _frame) = vc.read()
    if not grabbed:
        raise RuntimeError('Read frame!')
    old_gray = cv.cvtColor(_frame, cv.COLOR_BGR2GRAY)
    # the loop
    while True:
        if not pause:
            (grabbed, _frame) = vc.read()
            if not grabbed:
                raise RuntimeError('Read frame!')
            frame = _frame
        else:
            frame = _frame.copy()
        h, w, _ = frame.shape
        frame = cv.resize(frame, (640, 480))
        frame_gray = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
        # objects detecting
        classes, scores, boxes = model.detect(frame, 0.4, 0.4)
        for (classid, score, box) in zip(classes, scores, boxes):
            if score < 0.6:
                continue
            x, y, w, h = box
            cname = class_names[classid[0]]
            box_frame = frame[y:y+h, x:x+w]
            # searching aruco id
            corners, ids, rejected = cv.aruco.detectMarkers(
                box_frame, aruco_dict, parameters=aruco_params)
            if len(corners) > 0:
                ids = ids.flatten()
                # Loop over the detected ArUCo corners
                for (_corner, _id) in zip(corners, ids):
                    if _id not in markers:
                        features = find_good_features(box_frame)
                        if debug:
                            draw_features(box_frame, features)
                        bbox = create_marker(box_frame, features)
                        bbox = (bbox[0] + x, bbox[1] + y, bbox[2], bbox[3])
                        tracker.add(frame, bbox, _id)
                        markers.append(_id)
            # ===========================
            if debug:
                # draw optical flows
                pass
        # =============================
        tracker.update(frame)
        old_gray = frame_gray
        cvui.imshow(win_name, frame)
        ch = cv.waitKey(1)
        if ch == ord('q'):
            break
        elif ch == ord(' '):
            pause = not pause
        elif ch == ord('d'):
            pass


if __name__ == '__main__':
    main()
