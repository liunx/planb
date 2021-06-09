import sys
import cv2 as cv
import cvui
from tools import histogram_calc
from dnn_models import model_ssd_inception_v2_coco


class Detector:
    def __init__(self, score_min=0.8):
        self.id = 0
        self.objects = {}
        self.score_min = score_min
        self.class_names, self.model = model_ssd_inception_v2_coco()

    def histogram_compare(self, src, dst):
        src = cv.resize(src, (300, 300))
        dst = cv.resize(dst, (300, 300))
        h1 = histogram_calc(src)
        h2 = histogram_calc(dst)
        return cv.compareHist(h1, h2, cv.HISTCMP_CORREL)

    def store_object(self, frame, cname, score, box):
        if score < self.score_min:
            return
        x, y, w, h = box
        f = frame.copy()
        crop_img = f[y:y+h, x:x+w]
        found = False
        for k, v in self.objects.items():
            val = self.histogram_compare(v, crop_img)
            if val > 0.6:
                found = True
                print(f'Found object {k}, val {val}!')
                cv.imwrite(f'images/{k}.jpg', crop_img)
                break
        if not found:
            k = f'{cname}{self.id}'
            cv.imwrite(f'images/{k}.jpg', crop_img)
            self.id += 1
            self.objects[k] = crop_img

    def draw_object(self, frame, box):
        cvui.rect(frame, box[0], box[1], box[2], box[3], 0xff0000)

    def detect(self, frame, confidence=0.4, nms=0.4):
        classes, scores, boxes = self.model.detect(frame, confidence, nms)
        for (classid, score, box) in zip(classes, scores, boxes):
            cname = self.class_names[classid[0]]
            self.store_object(frame, cname, score, box)
            self.draw_object(frame, box)


def main():
    win_name = 'Finder'
    vc = cv.VideoCapture(sys.argv[1])
    cv.namedWindow(win_name)
    cvui.init(win_name)
    detector = Detector()
    last_histogram = []
    pause = False
    while True:
        if not pause:
            (grabbed, frame) = vc.read()
            if not grabbed:
                break
            h, w, _ = frame.shape
            frame = cv.resize(frame, (int(w/2), int(h/2)))
            detector.detect(frame)
        _frame = frame.copy()
        cvui.imshow(win_name, _frame)
        ch = cv.waitKey(1)
        if ch == ord('q'):
            break
        elif ch == ord(' '):
            pause = not pause


if __name__ == '__main__':
    main()
