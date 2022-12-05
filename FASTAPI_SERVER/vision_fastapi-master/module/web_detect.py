import io
import os
from google.cloud import vision
os.environ['GOOGLE_APPLICATION_CREDENTIALS'] = 'auth-key/auth-key.json'


def web_annotate(path):
    """경로 이미지 파일을 구글 API에 보내서 결과 객체 리턴"""
    # [vision_web_detection_tutorial_annotate 시작]
    client = vision.ImageAnnotatorClient()

    if path.startswith('http') or path.startswith('gs:'):
        image = vision.Image()
        image.source.image_uri = path

    else:
        with io.open(path, 'rb') as image_file:
            content = image_file.read()

        image = vision.Image(content=content)

    web_detection = client.web_detection(image=image).web_detection
    # [vision_web_detection_tutorial_annotate 끝]

    return web_detection
