import sys
import cv2 as cv
import cvui
import numpy as np


def histogram_calc(frame):
    hsv = cv.cvtColor(frame, cv.COLOR_BGR2HSV)
    hist_size = [50, 60]
    channels = [0, 1]
    # hue varies from 0 to 179, saturation from 0 to 255
    h_ranges = [0, 180]
    s_ranges = [0, 256]
    ranges = h_ranges + s_ranges  # concat lists
    hist = cv.calcHist([hsv], channels, None, hist_size,
                       ranges, accumulate=False)
    cv.normalize(hist, hist, alpha=0, beta=1, norm_type=cv.NORM_MINMAX)
    return hist


if __name__ == '__main__':
    win_name = 'Video'
    vc = cv.VideoCapture(sys.argv[1])
    is_cap = True
    frame = np.zeros((540, 960, 3), np.uint8)
    rect = cvui.Rect(10, 10, 20, 20)
    cv.namedWindow(win_name)
    cvui.init(win_name)
    last_histogram = []
    while True:
        if is_cap:
            (grabbed, frame) = vc.read()
            if not grabbed:
                sys.exit(1)
            h, w, _ = frame.shape
            frame = cv.resize(frame, (int(w/2), int(h/2)))
        _frame = frame.copy()
        if len(last_histogram) == 0:
            last_histogram = histogram_calc(_frame)
        hist = histogram_calc(_frame)
        val = cv.compareHist(last_histogram, hist, cv.HISTCMP_CORREL)
        #_frame = cv.cvtColor(_frame, cv.COLOR_BGR2LAB)
        x = cvui.mouse().x
        rect.x = x
        y = cvui.mouse().y
        rect.y = y
        cvui.printf(_frame, 10, 70, 1.0, 0xff0000, f'val: {val}')
        #cvui.printf(_frame, 10, 70, 1.0, 0xff0000, f'x: {x}, y: {y}')
        #cvui.rect(_frame, rect.x, rect.y, rect.width, rect.height, 0xff0000)
        #_frame = cv.cvtColor(_frame, cv.COLOR_HSV2BGR)
        cvui.imshow(win_name, _frame)
        ch = cv.waitKey(30)
        if ch == ord('q'):
            break
        elif ch == ord(' '):
            is_cap = not is_cap
