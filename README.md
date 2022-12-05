# 프로젝트 소개

편리한 음식 성분을 알아내기위해 사진을 찍고 이를 통해 음식을 구별해내고, 그 음식에 대한 성분표를 출력하는 앱 입니다.



# 프로젝트의 결과, 작동방식

1. 모바일 앱을 이용해 음식 이미지를 찍습니다
2. 받은 이미지를 백엔드서버에 업로드합니다
3. 백엔드 서버에서 음식이미지를 통해 음식을 알아내고, json 형식으로 결과를 리턴합니다
4. 클라이언트에서 받은 json 결과를 통해서, 음식을 고릅니다
5. 고른 음식의 성분표를 DB를 통해 불러와 출력합니다. 






# 프로젝트 파일 소개


## FASTAPI_SERVER

백엔드 서버, 이미지처리, json 반환을 담당



## Flutter_Client

모바일 클라이언트



# 사용한 API, 오픈소스, 데이터 리스트

1. [카카오맵 API](https://apis.map.kakao.com/)
2. [Google Place API](https://developers.google.com/maps/documentation/places/web-service/overview)
3. [공공데이터포털 데이터](https://www.data.go.kr/)
4. [카카오 챗봇 API](https://i.kakao.com/docs/tutorial-chatbot-key-features) 



## 개발환경
- 깃허브 페이지 : javascript
- 모바일 앱 : flutter, DART
- 챗봇 : 카카오 i 오픈빌더, python






# 팀원
<p align="center">
<table align="center" >
   <tr>
        <td align="center"><a href="https://github.com/SebellKo"><img src="https://github.com/SebellKo.png" width="100px;" alt=""/><br /><sub><b><br/>고세종</b></sub></a></td>
        <td align="center"><a href="https://github.com/NAMUORI00"><img src="https://github.com/NAMUORI00.png" width="100px;" alt=""/><br /><sub><b><br/>김유석</b></sub></a></td>
        <td align="center"><a href="https://github.com/jymh22"><img src="https://github.com/jymh22.png" width="100px;" alt=""/><br /><sub><b><br/>이홍규</b></sub></a></td>
     <td align="center"><a href="https://github.com/claris0"><img src="https://github.com/claris0.png" width="100px;" alt=""/><br /><sub><b><br/>선종호</b></sub></a></td>
   </tr>
</table>




# 라이선스(License List)

# OSS Notice | STILL #

This application is Copyright © CATEGORY. All rights reserved.

The following sets forth attribution notices for third party software that may be contained in this application.


-----------------------------------------------------------------
Code uses MIT license as follows:

# The MIT License(MIT) #

``````````
Copyright (c) CATEGORY

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
     
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
     
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

