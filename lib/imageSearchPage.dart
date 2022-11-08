import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/*참조 중
https://stackoverflow.com/questions/44841729/how-to-upload-images-to-server-in-flutter/51322060#51322060
https://usedpaper.tistory.com/58
https://dkswnkk.tistory.com/334

https://pub.dev/packages/image_picker
*/
/*
    // Pick an image 갤러리에서 이미지 선택
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    // Capture a photo 카메라로 이미지 촬영
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    // Pick a video 갤러리에서 비디오 선택
    final XFile? image = await _picker.pickVideo(source: ImageSource.gallery);
    // Capture a video 카메라로 비디오 촬영
    final XFile? video = await _picker.pickVideo(source: ImageSource.camera);
    // Pick multiple images 여러 이미지 선택
    final List<XFile>? images = await _picker.pickMultiImage();
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

  Future getImage(ImageSource imageSource) async{
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



              ElevatedButton(
                onPressed: () {
                  setState(() {
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