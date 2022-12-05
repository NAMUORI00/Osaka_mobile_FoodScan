import io
import os
os.environ['GOOGLE_APPLICATION_CREDENTIALS'] = 'auth-key/auth-key.json'
from google.cloud import vision

# visio API label 결과 리턴 함수
def func_vision_label(path):
    client = vision.ImageAnnotatorClient()
    file_name = os.path.abspath(path)
    with io.open(file_name, 'rb') as image_file:
        content = image_file.read()

    image = vision.Image(content=content)

    # 라벨 이미지 처리 부분
    response = client.label_detection(image=image)
    labels = response.label_annotations
    # 결과값 임시로 저장하는 딕셔너리 리스트
    temp_list = []
    for index, label in enumerate(labels):
        temp_dic = {index: {'label': label.description, 'score': label.score}}
        temp_list.append(temp_dic)
    return temp_list

