# fast API 설정
from fastapi import FastAPI, File, UploadFile
app = FastAPI()
# 구글 web_detect API 함수 임포트
from module.web_detect import web_annotate
from module.vision_label import func_vision_label
import uvicorn


@app.post("/upload")
async def upload(file: UploadFile = File(...)):
    try:
        contents = file.file.read()
        with open('file/' + file.filename, 'wb') as f:
            f.write(contents)
    except Exception:
        return {"message": "There was an error uploading the file"}
    finally:
        file.file.close()
    result = func_vision_label('file/' + file.filename)
    return result


@app.post("/upload/web")
async def web_upload(file: UploadFile = File(...)):
    try:
        contents = file.file.read()
        with open('file/' + file.filename, 'wb') as f:
            f.write(contents)
    except Exception:
        return {"message": "There was an error uploading the file"}
    finally:
        file.file.close()
    web_detected_obj = web_annotate('file/' + file.filename)
    result = []
    if web_detected_obj.web_entities:
        for index, entity in enumerate(web_detected_obj.web_entities):
            temp_dic = {index: {'descripton': entity.description, 'score': entity.score}}
            result.append(temp_dic)
    return result


@app.post("/upload/web_ko")
async def web_upload(file: UploadFile = File(...)):
    try:
        contents = file.file.read()
        with open('file/' + file.filename, 'wb') as f:
            f.write(contents)
    except Exception:
        return {"message": "There was an error uploading the file"}
    finally:
        file.file.close()
    web_detected_obj = web_annotate('file/' + file.filename)
    result = []
    if web_detected_obj.web_entities:
        for index, entity in enumerate(web_detected_obj.web_entities):
            temp_dic = {index: {'descripton': entity.description, 'score': entity.score}}
            result.append(temp_dic)
    for index, entity in enumerate(result):
        entity[index]['descripton'] = googletrans_en2ko(entity[index]['descripton'])
    return result

from googletrans import Translator
translator = Translator()
def googletrans_en2ko(parm):
    translated = translator.translate(parm, dest='ko')
    return translated.text


if __name__ == "__main__":
    uvicorn.run('main:app', port=8080, host='0.0.0.0')

