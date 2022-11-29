//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import 'main.dart';

class PersnalSetting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    /// Set to `true` to see the full possibilities of the iOS Developer Screen
    //final bool runCupertinoApp = false;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75.0),
    child: AppBar(
          iconTheme: IconThemeData(
        color: Colors.black,//색변경
      ),title: Text('개인 설정', style: TextStyle(color: Colors.black87,
          fontWeight: FontWeight.w500)),
          centerTitle: true),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('개인정보'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                onPressed: (context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                    //알림 설정으로 이동
                  );
                },
                leading: Icon(Icons.drive_file_rename_outline),
                title: Text('별명'),
                value: Text('공돌이'),
              ),
              SettingsTile.navigation(
                onPressed: (context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                    //알림 설정으로 이동
                  );
                },
                leading: Icon(Icons.abc),
                title: Text('이름'),
                value: Align(
                  alignment: Alignment.centerRight,
                    child:
                    Text('김철수'),),
              ),

              SettingsTile.navigation(
                onPressed: (context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                    //알림 설정으로 이동
                  );
                },
                leading: Icon(Icons.perm_identity),
                title: Text('ID'),
                value: Align(
                  alignment: Alignment.centerRight,
                  child:
                  Text('jeju0@jejunu.ac.kr'),),
              ),

              SettingsTile.navigation(
                onPressed: (context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                    //알림 설정으로 이동
                  );
                },
                leading: Icon(Icons.account_circle),
                title: Text('연결 계정'),
                value: Align(
                  alignment: Alignment.centerRight,
                  child:
                  Text('게스트 로그인'),),
              ),

            ],

          ),

          SettingsSection(
            title: Text('계정 설정'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                onPressed: (context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                    //알림 설정으로 이동
                  );
                },
                leading: Icon(Icons.password),
                title: Text('비밀번호 변경'),
              ),

              SettingsTile.navigation(
                onPressed: (context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                    //알림 설정으로 이동
                  );
                },
                leading: Icon(Icons.date_range),
                title: Text('가입일'),
                value: Align(
                  alignment: Alignment.centerRight,
                  child:
                  Text('2022년 2월 2일'),),
              ),
              SettingsTile.navigation(
                onPressed: (context) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                  );
                  //FirebaseAuth.instance.signOut();
                },
                leading: Icon(Icons.logout),
                title: Text('로그아웃')
              ),

            ],
          )
    ]
      )
    );
  }
}