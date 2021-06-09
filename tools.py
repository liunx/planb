import cv2 as cv


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


def calc_area(src, dst):
    area = 0.0
    xmin1, ymin1, w1, h1 = src
    xmax1 = xmin1 + w1
    ymax1 = ymin1 + h1
    xmin2, ymin2, w2, h2 = dst
    xmax2 = xmin2 + w2
    ymax2 = ymin2 + h2
    dx = min(xmax1, xmax2) - max(xmin1, xmin2)
    dy = min(ymax1, ymax2) - max(ymin1, ymin2)
    if (dx >= 0) and (dy >= 0):
        return dx * dy
    return area


def calc_overlap(src_box, dst_box):
    x, y, w, h = src_box
    src_area = w * h
    overlap_area = calc_area(src_box, dst_box)
    return overlap_area / src_area
