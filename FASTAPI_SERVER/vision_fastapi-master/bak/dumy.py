# Dumy 테스트 케이스 라우터 코드
# 작성자 : NAMUORI
# 작성일 : 2022_09_26
# 작성 이유 : 테스트 케이스에서 사용한 코드 백업
# 코드에 적용하지말고 참고할것


# 기본 fast api 탑재 함수
@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.get("/hello/{name}")
async def say_hello(name: str):
    return {"message": f"Hello {name}"}

# 라벨링 함수
@app.get("/test/labels")
def visioncall():
    client = vision.ImageAnnotatorClient()
    file_name = os.path.abspath('file/wakeupcat.jpeg')
    with io.open(file_name, 'rb') as image_file:
        content = image_file.read()

    image = vision.Image(content=content)

    # 라벨 이미지 처리 부분
    response = client.label_detection(image=image)
    labels = response.label_annotations
    temp_list = []  #결과값 임시로 저장하는 딕셔너리 리스트
    for label in labels:
        temp_dic = {'label': label.description, 'score': label.score}
        print(label.description)
        print(label.score)
        temp_list.append(temp_dic)
    return temp_list

# 오브젝트 탐지 함수
@app.get("/test/localize_objects")
def localize_objects():
    """Localize objects in the local image.
    Args:
    path: The path to the local file.
    """
    path = '../file/라면625f5cf1-3123689928.png'
    from google.cloud import vision
    client = vision.ImageAnnotatorClient()

    with open(path, 'rb') as image_file:
        content = image_file.read()
    image = vision.Image(content=content)

    objects = client.object_localization(image=image).localized_object_annotations

    print('Number of objects found: {}'.format(len(objects)))
    for object_ in objects:
        print('\n{} (confidence: {})'.format(object_.name, object_.score))
        print('Normalized bounding polygon vertices: ')
        for vertex in object_.bounding_poly.normalized_vertices:
            print(' - ({}, {})'.format(vertex.x, vertex.y))

# 이미지 탐색 함수
@app.get("/test/webcall")
def web_call():
    web_report(web_annotate('file/landmark.png'))

def web_report(annotations):
    """파이썬 콘솔창에 annotations 객체 리포트 결과 출력"""
    # [vision_web_detection_tutorial_print_annotations 시작]
    if annotations.pages_with_matching_images:
        print('\n{} Pages with matching images retrieved'.format(
            len(annotations.pages_with_matching_images)))

        for page in annotations.pages_with_matching_images:
            print('Url   : {}'.format(page.url))

    if annotations.full_matching_images:
        print('\n{} Full Matches found: '.format(
            len(annotations.full_matching_images)))

        for image in annotations.full_matching_images:
            print('Url  : {}'.format(image.url))

    if annotations.partial_matching_images:
        print('\n{} Partial Matches found: '.format(
            len(annotations.partial_matching_images)))

        for image in annotations.partial_matching_images:
            print('Url  : {}'.format(image.url))

    if annotations.web_entities:
        print('\n{} Web entities found: '.format(
            len(annotations.web_entities)))

        for entity in annotations.web_entities:
            print('Score      : {}'.format(entity.score))
            print('Description: {}'.format(entity.description))
    # [vision_web_detection_tutorial_print_annotations 끝]