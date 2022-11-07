import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:osaka/imageProcess.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ImagePage> createState() => _ImagePage();
}



class _ImagePage extends State<ImagePage> {

   XFile? image;
  dynamic sendDataPath;
  //임시
  //final picker = ImagePicker();
  TextEditingController inputController = TextEditingController();

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

                 FloatingActionButton(
                   tooltip: 'pick camera',
                   onPressed: () {
                     final image = GetImage().cameraImage();
                   },
                   child: const Icon(Icons.add_a_photo),
                 ),

                 FloatingActionButton(
                   tooltip: 'pick gallery image',
                   onPressed: () {
                     final image = GetImage().galleryImage();
                     image.then((img){
                       sendDataPath = img.path;
                       print("image Path : ${sendDataPath}");
                     });
                     //throw 발생
                     //final img = image as XFile?;
                     //if (img != null) {
                     //  sendDataPath = img.path;
                     //  print("image Path : ${sendDataPath}");
                    // }

                   },
                   child: const Icon(Icons.wallpaper),
                 ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                child: Center(
                  child: image  ==null
                  ? const Text('No Image selected')
                  : Image.file(sendDataPath),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                  });
                  },
                child: const Text('검색'),
              ),
              ],
            ),
          ),
        ),
        ],
      );
  }





}