from coco_labels import LABEL_MAP
import cv2
import sys
from lxml import etree
import argparse
import time
from os import path

CONFIDENCE_THRESHOLD = 0.2
NMS_THRESHOLD = 0.4
COLORS = [(0, 255, 255), (255, 255, 0), (0, 255, 0), (255, 0, 0)]

MODEL = "./tensorflow/ssd_inception_v2_coco.pb"
CFG = "./tensorflow/ssd_inception_v2_coco.pbtxt"


class_names = list(LABEL_MAP.values())

_annotation = '''
<annotation>
	<folder>{folder}</folder>
	<filename>{filename}</filename>
	<path>{path}</path>
	<source>
		<database>{database}</database>
	</source>
	<size>
		<width>{width}</width>
		<height>{height}</height>
		<depth>{depth}</depth>
	</size>
	<segmented>{segmented}</segmented>
</annotation>
'''

_object = '''
<object>
	<name>{name}</name>
	<pose>{pose}</pose>
	<truncated>{truncated}</truncated>
	<difficult>{difficult}</difficult>
	<bndbox>
		<xmin>{xmin}</xmin>
		<ymin>{ymin}</ymin>
		<xmax>{xmax}</xmax>
		<ymax>{ymax}</ymax>
	</bndbox>
</object>
'''


def write_PascalVOC(frame, scores, boxes):
    dat = time.strftime('%Y%m%d%H%M%S')
    fn = f'{dat}.png'
    xml = f'{dat}.xml'
    cv2.imwrite('data/{}'.format(fn), frame)
    height, width, depth = frame.shape
    anno = _annotation.format(folder='data', filename=fn, path=path.abspath(f'data/{fn}'),
                              database='Custom', width=width, height=height, depth=depth, segmented=0)
    root = etree.XML(anno)
    for (classid, score, box) in zip(classes, scores, boxes):
        if class_names[classid[0]] != 'person':
            continue
        if score < 0.5:
            continue
        xmin, ymin, xmax, ymax = box
        obj = _object.format(name='person', pose='Unspecified',
                            truncated=0, difficult=0, xmin=xmin, ymin=ymin, xmax=xmax, ymax=ymax)
        _obj = etree.XML(obj)
        root.append(_obj)
    tree = etree.ElementTree(root)
    tree.write(f'data/{xml}')


ap = argparse.ArgumentParser(
    description='Script to run MobileNet-SSD object detection network for collecting dataset')
ap.add_argument('-v', '--video', type=str, default='',
                help='Path to video file. If empty, web cam stream will be used')
ap.add_argument('-c', '--confidence', type=float, default=0.5,
                help='Minimum probability to filter weak detections')
args = vars(ap.parse_args())

vc = cv2.VideoCapture(args['video'])
net = cv2.dnn.readNetFromTensorflow(MODEL, CFG)
model = cv2.dnn_DetectionModel(net)
model.setInputParams(size=(300, 300), scale=1/255, swapRB=True)

while cv2.waitKey(1) < 1:
    (grabbed, frame) = vc.read()
    if not grabbed:
        exit()
    start = time.time()
    classes, scores, boxes = model.detect(
        frame, CONFIDENCE_THRESHOLD, NMS_THRESHOLD)
    end = time.time()

    write_PascalVOC(frame, scores, boxes)
    start_drawing = time.time()
    for (classid, score, box) in zip(classes, scores, boxes):
        color = COLORS[int(classid) % len(COLORS)]
        if score < args['confidence']:
            continue
        label = "%s : %f" % (class_names[classid[0]], score)
        cv2.rectangle(frame, box, color, 2)
        cv2.putText(frame, label, (box[0], box[1] - 10),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.5, color, 2)
        break
    end_drawing = time.time()

    fps_label = "FPS: %.2f (excluding drawing time of %.2fms)" % (
        1 / (end - start), (end_drawing - start_drawing) * 1000)
    cv2.putText(frame, fps_label, (0, 25),
                cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 0, 0), 2)
    cv2.imshow("detections", frame)
    # cv2.waitKey(0)
