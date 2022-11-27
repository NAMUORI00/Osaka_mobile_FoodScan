import 'package:flutter/material.dart';

import 'SearchPage.dart';
import 'example.dart';
import 'imageSearchPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    const appTitle = "오사카";
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: DefaultTabController(

        length: 3,
        child: Scaffold(

          appBar: AppBar(
            title: const Text(appTitle),

            bottom:  const TabBar(
              tabs: [
                Tab(text: "기본 예제"),
                Tab(text: "문자열 검색"),
                Tab(text: "이미지 검색" ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [

              MyHomePage(title: appTitle),
              SearchPage(title: appTitle),
              ImagePage(title: appTitle),

            ],
          ) ,
        ),
      ),
    );
  }
}

