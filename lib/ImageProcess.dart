/* 코드 최적화용
import 'dart:io';

import 'package:image_picker/image_picker.dart';


class Image{
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

    return File(image!.path);
  // 가져온 이미지를 _image에 저장

  }

}

*/
