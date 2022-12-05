# 프로젝트 소개

공공데이터 포털에 존재하는 착한가격 업소들의 데이터 정보를 바탕으로 지역별 착한가격 업소를 소개해주는 서비스 입니다.

오픈소스, API를 기반으로 제작하여 깃허브 정적페이지 기능을 통해 서비스를 제공합니다. 



# 프로젝트의 결과물

1. https://sebellko.github.io/-Still/ : 메인 서비스
2. https://pf.kakao.com/_xkxdxmxgb : 챗봇(데모)
3. https://github.com/claris0/NearGoodPrice : 어플리케이션
4. https://github.com/claris0/good-price-jeju : 모바일 페이지(데모)





# 프로젝트 파일 소개

```
├── README.md
├── app.js
├── contentsJSON
│   ├── chungbukContents.js
│   ├── chungnamContents.js
│   ├── daeguContents.js
│   ├── daejeonContents.js
│   ├── gwangjuContents.js
│   ├── gyeongbukContents.js
│   ├── jejuContents.js
│   ├── jeonbukContents.js
│   ├── jeonnamContents.js
│   ├── kangwondoContents.js
│   ├── seoulContents.js
│   └── ulsancontents.js
├── img
│   ├── logo.png
│   ├── logo.svg
│   ├── pin.png
│   └── searchIcon.png
├── index.html
├── module
│   ├── data
│   │   ├── data.csv
│   │   ├── data.json
│   │   └── data_2.csv
│   └── search.js
└── style.css
```



## app.js 

카카오맵 호출, 시각처리 부분 담당



## Index.html

프론트 페이지



## contentsJSON

지역별 착한가격 업소 데이터셋



## Module

개발중 사용한 함수, 테스트 함수 저장 경로



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

