import cv2 as cv
import sys
import time
import argparse
from convert import PascalVoc

COLORS = [(0, 255, 255), (255, 255, 0), (0, 255, 0), (255, 0, 0)]


def model_ssd_inception_v2_coco():
    pretrained = "models/ssd_inception_v2_coco.pb"
    proto = "models/ssd_inception_v2_coco.pbtxt"
    labels = 'models/coco_labels.txt'
    class_names = []
    with open(labels) as f:
        class_names = [cname.strip() for cname in f.readlines()]
    net = cv.dnn.readNetFromTensorflow(pretrained, proto)
    model = cv.dnn_DetectionModel(net)
    model.setInputParams(size=(300, 300), scale=1/255, swapRB=True)
    return class_names, model


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


def find_labels(classes, class_names):
    labels = []
    for i in classes:
        labels.append(class_names[i[0]])
    return labels


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
        return dx*dy
    return area


def calc_overlap(src_box, dst_box):
    x, y, w, h = src_box
    src_area = w * h
    overlap_area = calc_area(src_box, dst_box)
    return overlap_area / src_area


def main():
    parser = argparse.ArgumentParser(
        description='Script for collecting and labeling image dataset from video file or camera.')
    parser.add_argument('-i', '--input', default='', type=str,
                        help='Input video file or stream.')
    parser.add_argument('-d', '--data_dir', default='data', type=str,
                        help='Output dataset folder.')
    parser.add_argument('-l', '--label', default='person', type=str,
                        help='Labels to detect.')
    parser.add_argument('-m', '--model', default='ssd_inception_v2',
                        type=str, help='Pretrained model to detect with.')
    parser.add_argument('-c', '--confidence', default=0.4,
                        type=float, help='Confidence for detect object.')
    parser.add_argument('-n', '--nms', default=0.4, type=float,
                        help='Non Maximum Suppression for detect box.')
    parser.add_argument('--histogram', default=0.9,
                        type=float, help='Histogram threshold for detect object.')
    parser.add_argument('--overlap_threshold', default=0.5,
                        type=float, help='Threshold when decide a object match the tracker.')
    parser.add_argument('--max_width', default=1280,
                        type=int, help='Max width of the frame.')
    parser.add_argument('--max_height', default=720,
                        type=int, help='Max height of the frame.')
    parser.add_argument('--rotate', default=0, choices=[-90, 0, 90, 180],
                        type=int, help='Rotate angles [-90, 0, 90, 180]')
    args = parser.parse_args()
    if args.model == 'ssd_inception_v2':
        create_model = model_ssd_inception_v2_coco
    else:
        raise RuntimeError('Unsupported model!')

    class_names, model = create_model()
    tracker = cv.TrackerKCF_create()
    converter = PascalVoc(args.data_dir)
    vc = cv.VideoCapture(args.input)

    bool_tracker_init = False
    last_histogram = []
    while cv.waitKey(1) < 1:
        (grabbed, frame) = vc.read()
        if not grabbed:
            sys.exit(1)
        h, w, _ = frame.shape
        # shrink the size of frame
        if h > args.max_height:
            rate = h // args.max_height
            frame = cv.resize(frame, (int(w/rate), int(h/rate)))
        # rotation
        if args.rotate == 90:
            frame = cv.rotate(frame, cv.ROTATE_90_CLOCKWISE)
        elif args.rotate == -90:
            frame = cv.rotate(frame, cv.ROTATE_90_COUNTERCLOCKWISE)
        elif args.rotate == 180:
            frame = cv.rotate(frame, cv.ROTATE_180)
        start = time.time()
        classes, scores, boxes = model.detect(frame, args.confidence, args.nms)
        end = time.time()
        labels = find_labels(classes, class_names)
        if not bool_tracker_init:
            if args.label in labels:
                bool_tracker_init = True
                bbox = cv.selectROI('ROI', frame, False)
                ok = tracker.init(frame, bbox)
                cv.destroyWindow('ROI')
        else:
            ok, bbox = tracker.update(frame)
            if not ok:
                # Tracking failure
                cv.putText(frame, "Tracking failure detected", (100, 80),
                           cv.FONT_HERSHEY_SIMPLEX, 0.75, (0, 0, 255), 2)
                # recreate the tracker when failure
                tracker = cv.TrackerKCF_create()
                bool_tracker_init = False
                continue

        # check histogram
        val = 0.0
        hist = histogram_calc(frame)
        if len(last_histogram) > 0:
            val = cv.compareHist(last_histogram, hist, cv.HISTCMP_CORREL)
        if val < args.histogram:
            last_histogram = hist
            # export frame to dataset
            labels_bboxes = []
            for (classid, box) in zip(classes, boxes):
                cname = class_names[classid[0]]
                threshold = calc_overlap(bbox, box)
                if threshold > args.overlap_threshold:
                    labels_bboxes.append((cname, box))
            if len(labels_bboxes) > 0:
                converter.process(frame, labels_bboxes)

        # draw bound boxes for debugging
        start_drawing = time.time()
        # draw tracker bound boxes
        if bool_tracker_init:
            p1 = (int(bbox[0]), int(bbox[1]))
            p2 = (int(bbox[0] + bbox[2]), int(bbox[1] + bbox[3]))
            cv.rectangle(frame, p1, p2, (255, 0, 0), 2, 1)
        # draw objects bound boxes
        for (classid, score, box) in zip(classes, scores, boxes):
            cname = class_names[classid[0]]
            color = COLORS[int(classid) % len(COLORS)]
            label = "%s : %f" % (cname, score)
            cv.rectangle(frame, box, color, 2)
            cv.putText(frame, label, (box[0], box[1] - 10),
                       cv.FONT_HERSHEY_SIMPLEX, 0.5, color, 2)
        end_drawing = time.time()
        fps_label = "FPS: %.2f (excluding drawing time of %.2fms)" % (
            1 / (end - start), (end_drawing - start_drawing) * 1000)
        cv.putText(frame, fps_label, (0, 25),
                   cv.FONT_HERSHEY_SIMPLEX, 1, (0, 0, 0), 2)
        cv.imshow("detections", frame)


if __name__ == '__main__':
    main()
