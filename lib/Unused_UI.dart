//imageSearchPage.dart


/*오류남
// 다이어로그, 카메라 혹은 이미지 선택, 그리고 취소를 선택 가능함.
// 카메라 누르면 카메라 실행,
//이미지 누르면 갤러리 실행

  takeImage(contextMessage){
    return showDialog(context: contextMessage, builder: (context){
      return SimpleDialog(
        title: const Text('take image', style: TextStyle(),),
        children: <Widget>[
          SimpleDialogOption(
            child: const Text('Camera'),
            onPressed:() => getImage(ImageSource.camera),
          ),
          SimpleDialogOption(
            child: const Text('Gallery'),
            onPressed:() => getImage(ImageSource.gallery),
          ),
          SimpleDialogOption(
            child: const Text('Cancel'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      );
  });
}*/

//현재 미사용 UI 데이터
/* 아이콘 버튼
                 FloatingActionButton(
                   tooltip: 'pick camera',
                   onPressed: () {
                     getImage(ImageSource.camera);
                   },
                   child: const Icon(Icons.add_a_photo),
                 ),

                 FloatingActionButton(
                   tooltip: 'pick gallery image',
                   onPressed: () {
                     getImage(ImageSource.gallery);
                   },
                   child: const Icon(Icons.wallpaper),
                 ),
                 */
