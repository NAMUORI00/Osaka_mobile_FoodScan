import 'package:flutter/material.dart';
import 'package:osaka/main.dart';
import 'package:settings_ui/settings_ui.dart';
import 'PersonalSetting.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    /// Set to `true` to see the full possibilities of the iOS Developer Screen
    //final bool runCupertinoApp = false;
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(
        color: Colors.black,//색변경
      ),
          title: Text('설정', style: TextStyle(color: Colors.black87,
          fontWeight: FontWeight.w500)),
      centerTitle: true),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('일반'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                onPressed: (context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                    //알림 설정으로 이동
                  );
                },
                leading: Icon(Icons.language),
                title: Text('언어'),
                value: Text('한국어'),
              ),

              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: false,
                leading: Icon(Icons.format_paint),
                title: Text('다크 모드'),
              ),

              SettingsTile.navigation(
                onPressed: (context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                    //알림 설정으로 이동
                  );
                },
                leading: Icon(Icons.location_pin),
                title: Text('권한'),
                value: Text('위치, 통화, 저장공간'),
              ),

              SettingsTile.navigation(
                onPressed: (context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                    //알림 설정으로 이동
                  );
                },
                leading: Icon(Icons.notifications),
                title: Text('알림'),
                value: Text('허용'),
              ),
            ],
          ),

          SettingsSection(
            title: Text('기타'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                onPressed: (context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PersnalSetting()),
                    //알림 설정으로 이동
                  );
                },
                leading: Icon(Icons.person),
                title: Text('개인 설정')
              ),


              SettingsTile.navigation(
                onPressed: (context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                    //알림 설정으로 이동
                  );
                },
                leading: Icon(Icons.question_answer_outlined),
                title: Text('문의 사항'),
              ),

              SettingsTile.navigation(
                onPressed: (context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                    //알림 설정으로 이동
                  );
                },
                leading: Icon(Icons.attach_money),
                title: Text('도움 주기'),
              ),

              SettingsTile.navigation(
                onPressed: (context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                    //알림 설정으로 이동
                  );
                },
                leading: Icon(Icons.info),
                title: Text('어플리케이션 정보'),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
