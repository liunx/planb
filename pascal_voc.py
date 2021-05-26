import pathlib
from os import path
import time
import cv2 as cv
from lxml import etree
import uuid


class PascalVoc:

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

    def __init__(self, data_dir, class_names, confidence=0.5):
        self.frame_count = 0
        self.last_histogram = []
        self.confidence = confidence
        self.annotations = data_dir + '/Annotations'
        self.jpeg_images = data_dir + '/JPEGImages'
        image_sets = data_dir + '/ImageSets/Main'
        self.trainval = image_sets + '/trainval.txt'
        #self.train = image_sets + '/train.txt'
        #self.val = image_sets + '/val.txt'
        for dp in [self.annotations, image_sets, self.jpeg_images]:
            pathlib.Path(dp).mkdir(parents=True, exist_ok=True)
        self.class_names = class_names

    def histogram_calc(self, frame):
        hsv = cv.cvtColor(frame, cv.COLOR_BGR2HSV)
        hist_size = [50, 60]
        channels = [0, 1]
        # hue varies from 0 to 179, saturation from 0 to 255
        h_ranges = [0, 180]
        s_ranges = [0, 256]
        ranges = h_ranges + s_ranges # concat lists
        hist = cv.calcHist([hsv], channels, None, hist_size, ranges, accumulate=False)
        cv.normalize(hist, hist, alpha=0, beta=1, norm_type=cv.NORM_MINMAX)
        return hist

    def process(self, frame, classes, scores, boxes):
        timestamp = uuid.uuid4().hex[:16]
        #timestamp = '{:04}'.format(self.frame_count)
        self.frame_count += 1
        img = f'{timestamp}.jpg'
        xml = f'{timestamp}.xml'
        height, width, depth = frame.shape
        anno = self._annotation.format(folder='data', filename=img, path=f'{self.jpeg_images}/{img}',
                                database='Custom', width=width, height=height, depth=depth, segmented=0)
        root = etree.XML(anno)
        count = 0
        for (classid, score, box) in zip(classes, scores, boxes):
            class_name = self.class_names[classid[0]]
            if score < self.confidence:
                continue
            x, y, w, h = box
            obj = self._object.format(name=class_name, pose='Unspecified',
                                truncated=0, difficult=0, xmin=x, ymin=y, xmax=(x + w), ymax=(y + h))
            _obj = etree.XML(obj)
            root.append(_obj)
            count += 1
        if count > 0:
            if len(self.last_histogram) > 0:
                hist = self.histogram_calc(frame)
                val = cv.compareHist(self.last_histogram, hist, cv.HISTCMP_CORREL)
            else:
                hist = self.histogram_calc(frame)
                self.last_histogram = hist
                val = 0.0
            if val < 0.9:
                self.last_histogram = hist
                cv.imwrite('{}/{}'.format(self.jpeg_images, img), frame)
                tree = etree.ElementTree(root)
                tree.write('{}/{}'.format(self.annotations, xml))
                with open(self.trainval, 'a') as f:
                    f.write(timestamp + '\n')


if __name__ == '__main__':
    pascal_voc = PascalVoc('data')
