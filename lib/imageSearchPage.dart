import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';

import 'package:path/path.dart';
import 'package:async/async.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/services.dart';
//import 'ImageCheckPage.dart';
//import 'ImageProcess.dart';

/*참조 중

*/


// To parse this JSON data, do
//
//     final result = resultFromJson(jsonString);


List<Map<String, Result>> resultFromJson(String str) => List<Map<String, Result>>.from(json.decode(str).map((x) => Map.from(x).map((k, v) => MapEntry<String, Result>(k, Result.fromJson(v)))));

String resultToJson(List<Map<String, Result>> data) => json.encode(List<dynamic>.from(data.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())))));

class Result {
  Result({
    this.descripton,
    this.score,
  });

  String? descripton;
  double? score;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    descripton: json["descripton"],
    score: json["score"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "descripton": descripton,
    "score": score,
  };
}



// To parse this JSON data, do
//
//     final food = foodFromJson(jsonString);


List<Food> foodFromJson(String str) => List<Food>.from(json.decode(str).map((x) => Food.fromJson(x)));

String foodToJson(List<Food> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Food {
  Food({
    this.korean,
    this.english,
    this.latin,
    this.servingsize,
    this.energy,
    this.protein,
    this.fat,
    this.carbohydrate,
  });

  String? korean;
  String? english;
  String? latin;
  int? servingsize;
  dynamic energy;
  double? protein;
  String? fat;
  String? carbohydrate;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
    korean: json["korean"],
    english: json["english"],
    latin: json["latin"],
    servingsize: json["servingsize"],
    energy: json["energy"],
    protein: json["protein"].toDouble(),
    fat: json["fat"],
    carbohydrate: json["carbohydrate"],
  );

  Map<String, dynamic> toJson() => {
    "korean": korean,
    "english": english,
    "latin": latin,
    "servingsize": servingsize,
    "energy": energy,
    "protein": protein,
    "fat": fat,
    "carbohydrate": carbohydrate,
  };
}



class ImagePage extends StatefulWidget {
  const ImagePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ImagePage> createState() => _ImagePage();
}

class _ImagePage extends State<ImagePage> {
  File? _image;
  final picker = ImagePicker();

  //이미지를 받아오는 함수
  //imageSource 가 ImageSource.gallery 이면 갤러리에서 이미지 선택
  //ImageSource.camera 이면 카메라로 이미지 촬영
  //여러 이미지 선택 : final List<File>? images = await _picker.pickMultiImage();
  Future getImage(ImageSource imageSource) async{
    //final image = await picker.pickVideo( //비디오
    final image = await picker.pickImage(
        source: imageSource,
      //maxHeight: 75,
      //maxWidth: 75,
      //imageQuality: 30, // 이미지 크기 압축을 위해 퀄리티를 30으로 낮춤.
    );

    setState(() {
      _image = File(image!.path); // 가져온 이미지를 _image에 저장
    });
  }

//네트워크 메소드
  //이미지를 입력하여 json을 받아옴
  Future uploadImage(File imageFile) async {

    // nutrition 파일 로드
    String jsonString = await rootBundle.loadString('assets/json/nutrition.json');

    // open a bytestream
    var stream = http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
    // get file length
    var length = await imageFile.length();

    // string to uri
    var uri = Uri.parse("http://admin.namuori.net:5050/upload/web");

    // create multipart request
    var request = new http.MultipartRequest("POST", uri);

    // multipart that takes file
    var multipartFile = http.MultipartFile('file', stream, length,
        filename: basename(imageFile.path));

    // add file to multipart
    request.files.add(multipartFile);

    // send
    var response = await request.send();
    print(response.statusCode);

    // listen for response
    response.stream.transform(utf8.decoder).listen((value) {

      print(value);

      //JSON 파싱
      final result = resultFromJson(value);
      final food = foodFromJson(jsonString);

      // 같은 값을 라틴어(한국어음독), 영어, 한국어로 검색하고 존재할 경우 영양정보 JSON 순서값 프린트
      for(int i = 0; i < result.length; i++){
        for(int j = 0; j < food.length; j++) {
          if (food[j].english?.toLowerCase() == result[i][i.toString()]?.descripton?.toLowerCase() || food[j].latin?.toLowerCase() == result[i][i.toString()]?.descripton?.toLowerCase() || food[j].korean == result[i][i.toString()]?.descripton) {
            print(j);
          }
        }
      }



    });
  }


  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

        children:[
        GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

               children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
              ),

                 showImage(),

              ElevatedButton(
                onPressed: () {
                  uploadImage(_image!);
                  setState(() {
                    //ImageCheckPage(title: 'image',);
                  });
                  },
                child: const Text('생성'),
              ),
              ],
            ),
          ),
        ),
        ],
      );
  }

Widget showImage() => Container(
    //width: MediaQuery.of(context).size.width,
    height: 200.0,
    child: Center(
      child: GestureDetector(
        //터치하고 떼는 순간 image 불러옴
        onTapUp: (details) {
          getImage(ImageSource.gallery);
          //takeImage(context);
        },
       child : Container(
      //카메라 아이콘 크기 설정
      //width: MediaQuery.of(context).size.width,
           child:  _image  == null
           ? FittedBox(child : Icon( Icons.add_a_photo,))
               : Image.file(File(_image!.path)),
      ),)
      /*
      child: _image  == null
          ?  Text('No Image selected')
          : Image.file(File(_image!.path)),*/
    ),
  );

/*오류남
// 다이어로그, 카메라 혹은 이미지 선택, 그리고 취소를 선택 가능함.
// 카메라 누르면 카메라 실행,
//이미지 누르면 갤러리 실행

  takeImage(contextMessage){
    return showDialog(context: contextMessage, builder: (context){
      return SimpleDialog(
        title: const Text('take image', style: TextStyle(),),
        children: <Widget>[
          SimpleDialogOption(
            child: const Text('Camera'),
            onPressed:() => getImage(ImageSource.camera),
          ),
          SimpleDialogOption(
            child: const Text('Gallery'),
            onPressed:() => getImage(ImageSource.gallery),
          ),
          SimpleDialogOption(
            child: const Text('Cancel'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      );
  });
}*/
}

//현재 미사용 UI 데이터
/* 아이콘 버튼
                 FloatingActionButton(
                   tooltip: 'pick camera',
                   onPressed: () {
                     getImage(ImageSource.camera);
                   },
                   child: const Icon(Icons.add_a_photo),
                 ),

                 FloatingActionButton(
                   tooltip: 'pick gallery image',
                   onPressed: () {
                     getImage(ImageSource.gallery);
                   },
                   child: const Icon(Icons.wallpaper),
                 ),
                 */