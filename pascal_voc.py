import pathlib
from os import path
import time
import cv2
from lxml import etree


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

    def __init__(self, data_dir, confidence=0.5):
        self.confidence = confidence
        self.annotations = data_dir + '/Annotations'
        self.image_sets = data_dir + '/ImageSets/Main'
        self.jpeg_images = data_dir + '/JPEGImages'
        labels = data_dir + '/labels.txt'
        for dp in [self.annotations, self.image_sets, self.jpeg_images]:
            pathlib.Path(dp).mkdir(parents=True, exist_ok=True)
        with open(labels) as f:
            self.class_names = [cname.strip() for cname in f.readlines()]

    def process(self, frame, classes, scores, boxes):
        timestamp = time.strftime('%Y%m%d%H%M%S')
        img = f'{timestamp}.jpg'
        xml = f'{timestamp}.xml'
        cv2.imwrite('{}/{}'.format(self.jpeg_images, img), frame)
        height, width, depth = frame.shape
        anno = self._annotation.format(folder='data', filename=img, path=path.abspath(f'data/{img}'),
                                database='Custom', width=width, height=height, depth=depth, segmented=0)
        root = etree.XML(anno)
        for (classid, score, box) in zip(classes, scores, boxes):
            class_name = self.class_names[classid[0]]
            if score < self.confidence:
                continue
            xmin, ymin, xmax, ymax = box
            obj = self._object.format(name=class_name, pose='Unspecified',
                                truncated=0, difficult=0, xmin=xmin, ymin=ymin, xmax=xmax, ymax=ymax)
            _obj = etree.XML(obj)
            root.append(_obj)
        tree = etree.ElementTree(root)
        tree.write('{}/{}'.format(self.annotations, xml))


if __name__ == '__main__':
    pascal_voc = PascalVoc('data')
