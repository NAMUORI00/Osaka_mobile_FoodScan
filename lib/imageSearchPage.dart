
import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ImagePage> createState() => _ImagePage();
}



class _ImagePage extends State<ImagePage> {

//  File _image;
  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),

                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {

                    });
                  },
                  child: Text('검색'),
                ),
              ],


            ),

          ),
        ),
      ),
    );
  }
  
//참조 중  
//https://stackoverflow.com/questions/44841729/how-to-upload-images-to-server-in-flutter/51322060#51322060
//https://usedpaper.tistory.com/58
/*
  Future cameraImage() async {
    var image = await ImagePicker.pickImage(
      source: ImageSource.camera,
      maxHeight: 240.0,
      maxWidth: 240.0,
    );

    setState(() {
      _image = image;
    });
  }*/

}