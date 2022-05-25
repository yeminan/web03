<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./img/favicon.ico">
    <link rel="apple-touch-icon" href="./img/favicon.ico">
    <!-- 검색(메타) 정보 -->
    <meta name="url" content="https://www.glovis.net/Kor/main/index.do">
    <meta name="title" content="현대글로비스">
    <meta name="description" content="현대글로비스의 기업정보,제품정보,미디어,커뮤니티">
    <meta name="keywords" content="현대글로비스,HD,퀀텀">
    <!-- 오픈 그래프 -->
    <meta property="og:url" content="https://www.glovis.net/Kor/main/index.do">
    <meta property="og:title" content="현대글로비스">
    <meta property="og:description" content="현대글로비스의 기업정보,제품정보,미디어,커뮤니티">
    <meta property="og:image" content="./img/logo-square-letter.png">
    <title>현대글로비스</title>
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
        <link rel="stylesheet" href="./normalize.css">
        <link rel="stylesheet" href="./css/normalize.css">
         <link rel="stylesheet" href="./common.css">
         <link rel="stylesheet" href="./sub_common.css">
         <link rel="stylesheet" href="./grid.css">
        
        <style>
        .page_con{ overflow: hidden; width: 100%; padding:top 70px; padding-bottom: 120px;  }
        .page_wrap{padding-top: 70px; padding-bottom: 120px; width: 100%;}
        .page_1{ text-align: center; padding-bottom: 40px;}
        
        .pg1 { background-repeat: no-repeat; background-position:center center; 
        background-image: url("./img/mainCon_bg1.jpg");}
        .text { font-size:28px; color:#fff; line-height: 1.6; padding-top: 2em; }
        .ico_lst { clear:both; width: 1200px;  margin: 0 auto; margin-top:60px; padding-bottom: 50px;}
        .ico_lst li { width: 234px; height: 234px; border-right:1px solid #fff; border-top:1px solid #fff;
        border-bottom:1px solid #fff; float:left; text-align:center;}
        .ico_lst li{ padding-top: 50px; }
        .ico_tit{font-size: 18px; color: #fff; margin-top: 20px; }
        .ico_com{font-size:16px; margin-top: 20px; color: #fff;}
        .ico_lst li:first-child { border-left:1px solid #fff; } 
        .page_2{border: 1px solid black; margin:0 auto; }
        .page_2 td{border: 1px solid black; width: 20%; height: 80px; }
        .page_1> h3{padding-bottom: 50px;}
        .page_1> h1{padding-bottom: 60px; padding-top: 30px; text-align: center; }

        .page1_34 {float: left; width: 600px; }
        .img333 {background-repeat: no-repeat ; background-position: center center; 
            background-image: url("./img/ceo_bg.jpg");}
        
        
        #page1 .page_wrap { background-color:rgba(255, 255, 255, 0.171); }
        #page2 .page_wrap { background-color:rgb(255, 255, 255); }
        #page3 .page_wrap { background-color:rgb(255, 255, 255); }
        #page4 .page_wrap { background-color:rgb(255, 255, 255); }
        #page5 .page_wrap { background-color:rgb(255, 255, 255); }
        </style>
    </head>
<body>
               <%@ include file="nav.jsp" %>
        <div id="content">
            <div class="content_wrap">
                <section class="page" id="page1">
                    <figure class="sub_ban">
                        <img src="./img/subvisual1.jpg" alt="기업개요">
                        <div class="tit_box">
                            <h2 class="sub_tit">회사 소개</h2>
                            <p class="sub_com"></p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">회사소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel1"class="sel">
                                        <option value="company.jsp#page1" selected> 기업개요</option>
                                        <option value="company.jsp#page2">경영이념</option>
                                        <option value="company.jsp#page3">CEO메시지</option>
                                        <option value="company.jsp#page4">연혁</option>
                                        <option value="company.jsp#page5">수상인증</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>

                    
                    <div class="page_con">
                        <div class="page_1">
                            <h1>기업개요</h1>
                        <div class="page_wrap pg1">
                            <!-- <img src="/images/outline_bg.jpg" alt="" class="sub_tit1"> -->
                            <p class="text">
                                "최고의 자동차 물류전문 기업에서 글로벌 종합물류유통기업으로!"
                                <br>
                                "고객 가치 사슬 전반이 효율을 실현해 지속가능한 성장을 추구합니다."
                                <br>"Global Smart SCM Provider"
                            </p>
                            <ul class="ico_lst">
                                <li class="item1">
                                    <img src="./img/outline_top_icon1.png" alt="">
                                    <h4 class="ico_tit">회사설립</h4>
                                    <p class="ico_com">2001년 2월 22일</p>
                                </li>
                                <li class="item2">
                                    <img src="./img/outline_top_icon2.png" alt="">
                                    <h4 class="ico_tit">본사 소재지</h4>
                                    <p class="ico_com">서울특별시 성동구 왕십리로 83 21 (성수동 1 가 685 700)</p>
                                </li>
                                <li class="item3">
                                    <img src="./img/outline_top_icon3.png" alt="">
                                    <h4 class="ico_tit">인원 현황</h4>
                                    <p class="ico_com">국내 1,631명 / 해외 8,677명
                                        (2021년 12월 기준)</p>
                                </li>
                                <li class="item4">
                                    <img src="./img/outline_top_icon4.png" alt="">
                                    <h4 class="ico_tit">사업영역</h4>
                                    <p class="ico_com">물류, KD, 해운, 트레이딩, 오토비즈, EV · 수소 · 물류 플랫폼  
                                        거점 현황 국내 35개 / 해외 89개</p>
                                </li>
                                <li class="item5">
                                    <img src="./img/outline_top_icon5.png" alt="">
                                    <h4 class="ico_tit">거점 현황</h4>
                                    <p class="ico_com">국내 35개 / 해외 89개
                                        (2021년 12월 기준)</p>
                                </li>
                            </ul>
                            </div>
                            </div>
                        </div>
                       </section>
                    </div>
                    
                    <section class="page" id="page2">
                        <figure class="sub_ban">
                            <img src="./img/subvisual1.jpg" alt="경영이념">
                            <div class="tit_box">
                                <h2 class="sub_tit">경영이념</h2>
                                <p class="sub_com">현대글로비스를 아껴주시는 고객 여러분 안녕하십니까. 현대글로비스는 고객 가치사슬 전반의 효율화를 지원하는 글로벌 종합물류 유통기업으로 차별화된 경쟁력을 바탕으로 고객에게 수준 높은 서비스를 제공합니다.</p>
                            </div>
                        </figure>
                <div class="bread_box">
                    <div class="bread_wrap">
                        <ul class="bread">
                            <li class="item1">
                                <a href="index" class="home">HOME</a>
                            </li>
                            <li class="item2">회사소개</li>
                            <li class="item3">
                                <select name="sel" id="sel2" class="sel">
                                    <option value="company.jsp#page1">기업개요</option>
                                    <option value="company.jsp#page2"selected>경영이념</option>
                                    <option value="company.jsp#page3">CEO메시지</option>
                                    <option value="company.jsp#page4">연혁</option>
                                    <option value="company.jsp#page5">수상인증</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="page_con">
                    <div class="page_wrap">
                        <div class="page_1">
                            <h1>경영이념</h1>
                            <table class="page_2"><tr><td>경영철학 및 핵심과정</td></tr></table>
                            <br>
                            <h2>경영철학</h2>
                            <br>
                            <h3>현대자동차그룹은 창의적 사고와 끝없는 도전을 통해 새로운 미래를 창조함으로써 인류사회의 꿈을 실현합니다.</h3>
                            <div class="page1_34">
                            <img src="./img/idea1_img1.jpg"class="img34">
                            <br>
                            <h3>무한책임정신</h3>
                            <br>
                            <p>고객의 안전과 행복에 대한 무한책임정신은 <br> 
                            품질경영으로 구현되며 우리 사회를 위한 <br>
                            무한가치 창조로 이어집니다</p>
                            </div>
                            <div class="page1_34">
                            <img src="./img/idea1_img2.jpg"class="img35">
                            <br>
                            <h3>가능성의 실현</h3>
                            <br>
                            <p>
                            하나의 목표달성에 안주하지 않고<br>
                            늘 새로운 목표를 향하여, 실패를 두려워하지 않는<br>
                            도전정신으로 더 큰 미래를 창조합니다.
                            </p>
                            </div>
                            <div class="page1_34">
                            <img src="./img/idea1_img3.jpg"class="img36">
                            <br>
                            <h3>인류애의 구현</h3>
                            <br>
                            <p>인류를 위한 가치, 더 좋은 제품과 서비스를<br>
                                더 많은 사람에게, 더 신속하게 제공하여<br>
                                인류의 생활을 보다 풍요롭게 합니다.</p>
                            </div>
                            
                        </div>
                        </div>
                    </div>
                    </section>

                <section class="page" id="page3">
                    <figure class="sub_ban">
                        <img src="./img/subvisual1.jpg" alt="CEO메시지">
                        <div class="tit_box">
                            <h2 class="sub_tit">CEO메시지</h2>
                            <p class="sub_com">인간의 삶에 가치를 더하고 인류의 삶에 공헌하는 글로벌 초일류기업으로 항상 여러분과 함께 하겠습니다.</p>
                        </div>
                    </figure>
                       <div class="bread_box">
                         <div class="bread_wrap">
                               <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                  </li>
                                  <li class="item2">회사소개</li>
                                  <li class="item3">
                                     <select name="sel" id="sel3" class="sel">
                                     <option value="company.jsp#page1"> 기업개요</option>
                                    <option value="company.jsp#page2">경영이념</option>
                                    <option value="company.jsp#page3" selected>CEO메시지</option>
                                     <option value="company.jsp#page4">연혁</option>
                                    <option value="company.jsp#page5">수상인증</option>
                                                 </select>
                                             </li>
                                       </ul>
                                 </div>
                             </div>
                 <div class="page_con">
                  <div class="page_wrap">
                    <div class="img333">
                        <p class="text">CEO 메시지</p>>
                        <img src="./img/ceo_bg.jpg">

                        
                       

                    </div>

                    </div>                 
                  </div>
                  </section>
                <section class="page" id="page4">
                    <figure class="sub_ban">
                        <img src="./img/subvisual1.jpg" alt="연혁">
                    <div class="tit_box">
                            <h2 class="sub_tit">연혁</h2>
                            <p class="sub_com">연혁입니다</p>
                        </div>
                        </figure>
                        <div class="bread_box">
                            <div class="bread_wrap">
                                <ul class="bread">
                                    <li class="item1">
                                        <a href="index" class="home">HOME</a>
                                    </li>
                                    <li class="item2">회사소개</li>
                                    <li class="item3">
                                        <select name="sel" id="sel4" class="sel">
                                            <option value="company.jsp#page1"> 기업개요</option>
                                            <option value="company.jsp#page2">경영이념</option>
                                            <option value="company.jsp#page3">CEO메시지</option>
                                            <option value="company.jsp#page4"selected>연혁</option>
                                            <option value="company.jsp#page5">수상인증</option>
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
                <section class="page" id="page5">
                    <figure class="sub_ban">
                        <img src="./img/subvisual1.jpg" alt="수상인증">
                    <div class="tit_box">
                        <h2 class="sub_tit">수상인증</h2>
                            <p class="sub_com">인간의 삶에 가치를 더하고 인류의 삶에 공헌하는 글로벌 초일류기업으로 항상 여러분과 함께 하겠습니다.</p>
                        </div>
                        <div class="bread_box">
                            <div class="bread_wrap">
                                <ul class="bread">
                                    <li class="item2">
                                        <a href="index" class="home">HOME</a>
                                    </li>
                                    <li class="item2">회사소개</li>
                                    <li class="item3">
                                        <select name="sel" id="sel5" class="sel">
                                            <option value="company.jsp#page1"> 기업개요</option>
                                            <option value="company.jsp#page2">경영이념</option>
                                            <option value="company.jsp#page3">CEO메시지</option>
                                            <option value="company.jsp#page4">연혁</option>
                                            <option value="company.jsp #page5"selected>수상인증</option>
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
              
            </div>
            <script>
                $(document).ready(function(){
                    $(".sel").change(function(){
                        location.href = this.value;
                    });
                });    
                </script>
        </div>
        <footer id="ft">
           <%@ include file = "ft.jsp" %> 
        </footer>
   
</body>
</html>