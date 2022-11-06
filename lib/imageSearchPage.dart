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
  //임시
  late Future<dynamic> image;
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
              //image = GetImage().galleryImage();
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
        ],
      );
  }





}