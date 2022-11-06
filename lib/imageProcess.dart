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

class GetImage{
  final ImagePicker picker = ImagePicker();

  //갤러리에 있는 단일 이미지 선택
  Future galleryImage() async {
    XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 75,
      maxWidth: 75,
      imageQuality: 30, // 이미지 크기 압축을 위해 퀄리티를 30으로 낮춤.
    );

    return image;
    //이미지 경로 저장
    if (image != null) {
      dynamic sendData = image.path;
    }

  }
  
  //카메라 촬영모드
  Future cameraImage() async {
    var image = await picker.pickImage(
      source: ImageSource.camera,
      maxHeight: 240.0,
      maxWidth: 240.0,
    );

    return image;
  }

}