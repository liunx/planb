import sys
import cv2 as cv


class Tracker:
    def __init__(self, labels):
        self.trackers = []
        for label in labels:
            tracker = cv.TrackerKCF_create()
            # label, tracker, init status, bbox
            self.trackers.append([label, tracker, False, (0, 0, 0, 0)])

    def init(self, frame):
        for tracker in self.trackers:
            if not tracker[2]:
                print("Add tracker for label {}!".format(tracker[0]))
                bbox = cv.selectROI(tracker[0], frame, False)
                cv.destroyWindow(tracker[0])
                if sum(bbox) > 0:
                    _tracker = cv.TrackerKCF_create()
                    if _tracker.init(frame, bbox):
                        tracker[1] = _tracker
                        tracker[2] = True
                        tracker[3] = bbox

    def update(self, frame):
        for tracker in self.trackers:
            if tracker[2]:
                ok, bbox = tracker[1].update(frame)
                if ok:
                    tracker[3] = bbox
                else:
                    tracker[2] = False
                    tracker[3] = (0, 0, 0, 0)

    def draw(self, frame):
        for tracker in self.trackers:
            if tracker[2]:
                bbox = tracker[3]
                p1 = (int(bbox[0]), int(bbox[1]))
                p2 = (int(bbox[0] + bbox[2]), int(bbox[1] + bbox[3]))
                cv.rectangle(frame, p1, p2, (255, 0, 0), 2, 1)
                cv.putText(
                    frame,
                    tracker[0],
                    (int(bbox[0]), int(bbox[1] - 10)),
                    cv.FONT_HERSHEY_SIMPLEX,
                    0.5,
                    (255, 0, 0),
                    2,
                )

    def data(self):
        return self.trackers


if __name__ == "__main__":
    labels = ["Liu Lei"]
    tracker = Tracker(labels)
    vc = cv.VideoCapture(sys.argv[1])
    while cv.waitKey(1) < 1:
        (grabbed, frame) = vc.read()
        if not grabbed:
            sys.exit(1)
        h, w, _ = frame.shape
        frame = cv.resize(frame, (int(w / 2), int(h / 2)))
        tracker.init(frame)
        tracker.update(frame)
        tracker.draw(frame)
        cv.imshow("Detect", frame)
