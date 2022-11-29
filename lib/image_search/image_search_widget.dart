
import '../SettingPage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';


import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:async/async.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Food.dart';

class ImageSearchWidget extends StatefulWidget {
  const ImageSearchWidget({Key? key}) : super(key: key);

  @override
  _ImageSearchWidgetState createState() => _ImageSearchWidgetState();
}

class _ImageSearchWidgetState extends State<ImageSearchWidget> with AutomaticKeepAliveClientMixin<ImageSearchWidget>{
  final scaffoldKey = GlobalKey<ScaffoldState>();

  var foodData = List<FoodInfo>.empty(growable: true);

  //late List<FoodInfo> foodData;
  File? _image;
  final picker = ImagePicker();

  //이미지를 받아오는 함수
  //imageSource 가 ImageSource.gallery 이면 갤러리에서 이미지 선택
  //ImageSource.camera 이면 카메라로 이미지 촬영
  //여러 이미지 선택 : final List<File>? images = await _picker.pickMultiImage();
  Future getImage(ImageSource imageSource) async {
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
    String jsonString = await rootBundle.loadString(
        'assets/json/nutrition.json');

    // open a bytestream
    var stream = http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
    // get file length
    var length = await imageFile.length();

    // string to uri
    var uri = Uri.parse("http://admin.namuori.net:5050/upload/web");

    // create multipart request
    var request = http.MultipartRequest("POST", uri);

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
      for (int i = 0; i < result.length; i++) {
        for (int j = 0; j < food.length; j++) {
          if (food[j].english?.toLowerCase() ==
              result[i][i.toString()]?.descripton?.toLowerCase() ||
              food[j].latin?.toLowerCase() ==
                  result[i][i.toString()]?.descripton?.toLowerCase() ||
              food[j].korean == result[i][i.toString()]?.descripton) {
            print(j);

            //%으로 변환 
            double? temp = result[i][i.toString()]?.score;
            temp = (temp! * 100)!;

            //유의미한 데이터를 FoodInfo에 넣음
            final fd = FoodInfo(food: food[j], score: temp.round());
            print('${fd.food.carbohydrate}, ${fd.food.energy}, ${fd.food
                .korean}, ${fd.food.fat}, ${fd.food.protein}, ${fd.score}');

            //FoodInfo 리스트에 추가
            foodData.add(fd);
          }
        }
      }
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFFFEEE4),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme
            .of(context)
            .primaryColor,
        automaticallyImplyLeading: false,
        title: Text('헬스캡쳐',
          style: FlutterFlowTheme
              .of(context)
              .title2
              .override(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),

        ),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: '설정으로 들어가기',
            enableFeedback: true,
            icon:
            const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingPage()),
              );
            },
          )
        ],
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.18,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFEEE4),
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20, 20, 20, 0),
                        child: Text(
                          '음식 등록',
                          textAlign: TextAlign.start,
                          style:
                          FlutterFlowTheme
                              .of(context)
                              .subtitle1
                              .override(
                            fontFamily: 'koreansimple',
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            25, 5, 0, 10),
                        child: Text(
                          '사진 업로드',
                          style: FlutterFlowTheme
                              .of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'koreansimple',
                            color:
                            FlutterFlowTheme
                                .of(context)
                                .secondaryText,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: 200,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: GestureDetector(
                          onTapUp: (details) {
                            getImage(ImageSource.gallery);
                          },
                          child: SizedBox(
                            //  'assets/images/coverEmpty@3x.png',
                            width: 100,
                            height: 100,
                            //fit: BoxFit.cover,
                            child: _image == null
                                ? const FittedBox(
                                child: Icon(Icons.add_a_photo,))
                                : Image.file(
                              File(_image!.path),
                              width: 100,
                              height: 100,
                              //fit: BoxFit.cover,
                            ),
                            //: Image.asset(_image!.path),
                          )),
                    ),
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: 120,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            50, 30, 50, 30),
                        child: FFButtonWidget(
                          //등록 버튼을 누르면 이미지 업로드 및 다이어로그 출력
                          onPressed: () =>
                          {
                            uploadImage(_image!),

                            foodData.first == null
                                ? loading(context)
                                : dl(context)
                          },
                          //{print('Button pressed ...');
                          //  uploadImage(_image!);},
                          text: '등록',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: const Color(0xFFEE8B60),
                            textStyle:
                            FlutterFlowTheme
                                .of(context)
                                .subtitle2
                                .override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                            elevation: 4,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            50, 0, 50, 0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                            getImage(ImageSource.camera);
                          },
                          text: '사진을 사용하지 않고 직접 등록',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: const Color(0xFFFFEEE4),
                            textStyle:
                            FlutterFlowTheme
                                .of(context)
                                .subtitle2
                                .override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFFCE6D39),
                            ),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ), ),
    );
  }

  dl(context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) =>
          AlertDialog(
            title: const Text('등록 확인'),
            content: Text(
                ' \'${foodData.first.food.korean}\'이 맞나요?   일치율: ${foodData
                    .first.score}%'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('아니오'),
              ),
              TextButton(
                onPressed: () =>
                {
                  Navigator.pop(context, 'OK'),
                },
                child: const Text('네'),
              ),
            ],
          ),
    );
  }

  loading(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
          ),
          content: const SizedBox(
            height: 200,
            child: Center(
                child: SizedBox(
                  height: 50.0,
                  width: 50.0,
                  child:
                  CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.blue),
                      strokeWidth: 5.0
                  ),
                )
            ),
          ),
        );
      },
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}