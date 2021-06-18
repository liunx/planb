import sys
import cv2 as cv
import numpy as np


def frame_resize(frame, w=320, h=240):
    return cv.resize(frame, (w, h))


def draw_flow(img, flow, step=16):
    h, w = img.shape[:2]
    y, x = np.mgrid[step/2:h:step, step/2:w:step].reshape(2, -1).astype(int)
    fx, fy = flow[y, x].T
    lines = np.vstack([x, y, x+fx, y+fy]).T.reshape(-1, 2, 2)
    lines = np.int32(lines + 0.5)
    vis = cv.cvtColor(img, cv.COLOR_GRAY2BGR)
    cv.polylines(vis, lines, 0, (0, 255, 0))
    for (x1, y1), (_x2, _y2) in lines:
        cv.circle(vis, (x1, y1), 1, (0, 255, 0), -1)
    return vis


def detect_active_objects(img, flow, step=16, min_width=20, min_height=20):
    h, w = img.shape[:2]
    y, x = np.mgrid[step/2:h:step, step/2:w:step].reshape(2, -1).astype(int)
    fx, fy = flow[y, x].T
    lines = np.vstack([x, y, x+fx, y+fy]).T.reshape(-1, 2, 2)
    lines = np.int32(lines + 0.5)
    vis = cv.cvtColor(img, cv.COLOR_GRAY2BGR)


def main():
    vc = cv.VideoCapture(sys.argv[1])
    (grabbed, prev) = vc.read()
    if not grabbed:
        raise RuntimeError('Read frame!')
    prev = frame_resize(prev)
    prevgray = cv.cvtColor(prev, cv.COLOR_BGR2GRAY)
    while True:
        (grabbed, frame) = vc.read()
        if not grabbed:
            raise RuntimeError('Read frame!')
        frame = frame_resize(frame)
        gray = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
        flow = cv.calcOpticalFlowFarneback(
            prevgray, gray, None, 0.5, 3, 7, 3, 5, 1.2, 0)
        prevgray = gray
        cv.imshow('flow', draw_flow(gray, flow))
        #cv.imshow('view', frame)
        ch = cv.waitKey(1)
        if ch in [27, ord('q')]:
            break


if __name__ == '__main__':
    main()
    cv.destroyAllWindows()
