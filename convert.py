from lxml import etree
import uuid
import pathlib
import cv2 as cv


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

    def __init__(self, data_dir):
        self.annotations = data_dir + '/Annotations'
        self.jpeg_images = data_dir + '/JPEGImages'
        image_sets = data_dir + '/ImageSets/Main'
        self.ids = image_sets + '/ids.txt'
        self.train = image_sets + '/train.txt'
        self.val = image_sets + '/val.txt'
        for dp in [self.annotations, image_sets, self.jpeg_images]:
            pathlib.Path(dp).mkdir(parents=True, exist_ok=True)

    def process(self, frame, labels_bboxes, segmented=0):
        timestamp = uuid.uuid4().hex[:16]
        img = f'{timestamp}.jpg'
        xml = f'{timestamp}.xml'
        height, width, depth = frame.shape
        anno = self._annotation.format(folder='data', filename=img, path=f'{self.jpeg_images}/{img}',
                                       database='Custom', width=width, height=height, depth=depth, segmented=segmented)
        root = etree.XML(anno)
        count = 0
        for class_name, bbox in labels_bboxes:
            x, y, w, h = bbox
            obj = self._object.format(name=class_name, pose='Unspecified',
                                      truncated=0, difficult=0, xmin=x, ymin=y, xmax=(x + w), ymax=(y + h))
            _obj = etree.XML(obj)
            root.append(_obj)
            count += 1
        if count > 0:
            cv.imwrite('{}/{}'.format(self.jpeg_images, img), frame)
            tree = etree.ElementTree(root)
            tree.write('{}/{}'.format(self.annotations, xml))
            with open(self.ids, 'a') as f:
                f.write(timestamp + '\n')
