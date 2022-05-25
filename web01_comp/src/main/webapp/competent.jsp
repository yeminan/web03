<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./img/favicon.ico">
    <link rel="apple-touch-icon" href="./img/favicon.ico">
     <!-- 검색(메타) 정보 -->
     <meta name="url" content="https://www.samsungdisplay.co.kr">
     <meta name="title" content="현대글로비스">
     <meta name="description" content="현대글로비스의 기업정보,제품정보,미디어,커뮤니티">
     <meta name="keywords" content="현대글로비스,HD,퀀텀">
     <!-- 오픈 그래프 -->
     <meta property="og:url" content="https://www.samsungdisplay.co.kr">
     <meta property="og:title" content="현대글로비스">
     <meta property="og:description" content="현대글로비스의 기업정보,제품정보,미디어,커뮤니티">
     <meta property="og:image" content="./img/logo-square-letter.png">
     <title>삼성 Display</title>
     <!-- 기본 플러그인 연결 -->
     <script src="https://code.jquery.com/jquery-latest.js"></script>
     <!-- 웹 폰트/폰트 모듈 연결 -->
     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
     <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
     <style>
         @font-face {
             font-family: 'scB';
             src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/SuncheonB.woff') format('woff');
             font-weight: normal;
             font-style: normal;
         } 
         @font-face {
             font-family: 'ROKAF';
             src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts2201-3@1.0/ROKAFSlabSerifBold.woff') format('woff');
             font-weight: normal;
             font-style: normal;
         }   
         </style>
         <!-- 웹 아이콘 연결 -->
         <!-- XEIcon -->
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
         <!-- 스타일 초기화 모듈 연결 -->
         <!-- <link rel="stylesheet" href="./css/reset.css"> -->
         <link rel="stylesheet" href="./css/normalize.css">
         <link rel="stylesheet" href="common.css">
         <link rel="stylesheet" href="sub_common.css">
         <link rel="stylesheet" href="grid.css">
         <link rel="stylesheet" href="normalize.css">
         <style>
         #page1 .page_wrap { background-color:beige }
         #page2 .page_wrap { background-color:beige; }
         #page3 .page_wrap { background-color:beige; }
         #page4 .page_wrap { background-color:beige; }
         #page5 .page_wrap { background-color:beige; }
         </style>
     </head>
	<%@ include file="nav.jsp" %>
     <div id="content">
         <div class="content_wrap">
             <section class="page" id="page1">
                 <figure class="sub_ban">
                     <img src="./img/subvisual4.jpg" alt="기업개요">
                     <div class="tit_box">
                         <h2 class="sub_tit">WHY GLOVIS</h2>
                         <p class="sub_com">멈춰있으면 도태될 수 밖에 없습니다. 우리 몸 속의 혈액을 통해 온 몸 곳곳에 영양분을
                            제공해 주는 것처럼 현대글로비스의 네트워크를 통해서 원재료부터 자동차까지 세계로 퍼져나가고 있습니다.
                            현대글로비스는 함께 세상을 움직일 인재가 필요합니다.</p>
                     </div>
                 </figure>
                 <div class="bread_box">
                     <div class="bread_wrap">
                         <ul class="bread">
                             <li class="item1">
                                 <a href="index" class="home">HOME</a>
                             </li>
                             <li class="item2">인재채용</li>
                             <li class="item3">
                                 <select name="sel" id="sel1"class="sel">
                                     <option value="competent.html#page1" selected>WHY GLOVIS</option>
                                     <option value="competent.html#page2">MEET GLOVIS</option>
                                     <option value="competent.html#page3">직무소개</option>
                                 </select>
                             </li>
                         </ul>
                     </div>
                 </div>
                 <div class="page_con">
                     <div class="page_wrap">

                     </div>
                 </div>
                 </section>
                         <section class="page" id="page2">
                             <figure class="sub_ban">
                                 <img src="./img/subvisual4.jpg" alt="기업개요">
                                 <div class="tit_box">
                                     <h2 class="sub_tit">MEET GLOVIS</h2>
                                     <p class="sub_com">PCTC(완성차 운반선)를 이용, 본사와 해외 네트워크 간 효율적인 업무 협력을 통해 완성차, 버스, 건설용 중장비, 특수화물(브레이크벌크) 등을 운송하며 제3자 물류 비중을
                                         확대하고 있습니다. 전 세계에 걸친 다양한 항로개발과 노선확대로 고객만족을 극대화합니다.</p>
                                 </div>
                             </figure>
                             <div class="bread_box">
                                 <div class="bread_wrap">
                                     <ul class="bread">
                                         <li class="item1">
                                             <a href="index" class="home">HOME</a>
                                         </li>
                                         <li class="item2">인재채용</li>
                                         <li class="item3">
                                             <select name="sel" id="sel2"class="sel">
                                                <option value="competent.html#page1">WHY GLOVIS</option>
                                                <option value="competent.html#page2"selected>MEET GLOVIS</option>
                                                <option value="competent.html#page3">직무소개</option>
                                             </select>
                                         </li>
                                     </ul>
                                 </div>
                             </div>
                             <div class="page_con">
                                 <div class="page_wrap">
         
                                 </div>
                             </div>
                             </section>
                
                                  <section class="page" id="page3">
                                    <figure class="sub_ban">
                                     <img src="./img/subvisual4.jpg" alt="기업개요">
                                     <div class="tit_box">
                                            <h2 class="sub_tit">직무소개</h2>
                                            <p class="sub_com">PCTC(완성차 운반선)를 이용, 본사와 해외 네트워크 간 효율적인 업무 협력을 통해 완성차, 버스, 건설용 중장비, 특수화물(브레이크벌크) 등을 운송하며 제3자 물류 비중을
                                               확대하고 있습니다. 전 세계에 걸친 다양한 항로개발과 노선확대로 고객만족을 극대화합니다.</p>
                                     </div>
                                    </figure>
                                 <div class="bread_box">
                                     <div class="bread_wrap">
                                           <ul class="bread">
                                               <li class="item1">
                                                 <a href="index" class="home">HOME</a>
                                              </li>
                                              <li class="item2">인재채용</li>
                                              <li class="item3">
                                                <select name="sel" id="sel3"class="sel">
                                                <option value="competent.html#page1">WHY GLOVIS</option>
                                                <option value="competent.html#page2">MEET GLOVIS</option>
                                                <option value="competent.html#page3"selected>직무소개</option>
                                       </select>
                                  </li>
                             </ul>
                             </div>
                              </div>
                       <div class="page_con">
                 <div class="page_wrap">
          </div>
        </div>
         </section>
<script>
 $(document).ready(function(){
     $(".sel").change(function(){
         location.href = this.value;
     });
 });    
 </script>
</div>
<footer id="ft">
 <%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>