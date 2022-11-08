import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/*참조 중
https://stackoverflow.com/questions/44841729/how-to-upload-images-to-server-in-flutter/51322060#51322060
https://usedpaper.tistory.com/58
https://dkswnkk.tistory.com/334

https://pub.dev/packages/image_picker
*/

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

  Future postImage( {required dynamic image,  required String baseUri}) async{
    print("Started data communication");
    print(baseUri);
    var dio = Dio();
    try {
      dio.options.contentType = 'multipart/form-data';
      //dio.options.maxRedirects.isFinite;

      //권한 부여문
      //dio.options.headers = {'required': true};
     // dio.options.headers["authorization"] = "strict-origin-when-cross-origin";
      var response = await dio.post(
        baseUri ,
        data: image,
      );
      print(response.statusCode);
      print('성공적으로 업로드했습니다');
      print(response.data);
      return response.data;
    } catch (e) {
      print(e);
    }
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
                  setState(() {
                    postImage(
                      image: _image,
                      baseUri: 'http://admin.namuori.net:5050/upload',
                    );
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
    width: MediaQuery.of(context).size.width,
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
      width: MediaQuery.of(context).size.width,
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