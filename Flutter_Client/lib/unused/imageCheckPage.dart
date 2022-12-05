import 'dart:io';
import 'package:flutter/material.dart';

//비동기 페이지.
//미사용

class ImageCheckPage extends StatefulWidget{
  const ImageCheckPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ImageCheckPage> createState() => _ImageCheckPage();
}

class _ImageCheckPage extends State<ImageCheckPage> {

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
        DefaultTextStyle(
          style: Theme.of(context).textTheme.headline5!,
          child:  FutureBuilder<dynamic>(
            //future: File,
            builder: (BuildContext context , AsyncSnapshot<dynamic> snapshot) {
    if (snapshot.hasData) {

    }else if (snapshot.hasError) {
        Text("${snapshot.error}");

      //데이터 받는 도중 대기
    }else {
      <Widget>[
        const SizedBox(
          width: 60,
          height: 60,
          child: CircularProgressIndicator(),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16),
          child: Text('Awaiting...'),
        )
      ];

    }
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
      ),
    );
            }),)
          ],
    );
  }
}

