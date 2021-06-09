import cv2 as cv


def model_ssd_inception_v2_coco():
    pretrained = "models/ssd_inception_v2_coco.pb"
    proto = "models/ssd_inception_v2_coco.pbtxt"
    labels = "models/coco_labels.txt"
    class_names = []
    with open(labels) as f:
        class_names = [cname.strip() for cname in f.readlines()]
    net = cv.dnn.readNetFromTensorflow(pretrained, proto)
    model = cv.dnn_DetectionModel(net)
    model.setInputParams(size=(300, 300), scale=1 / 255, swapRB=True)
    return class_names, model
