<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ 디렉티브 %> --%>
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
<div class="wrap">
<div class="container-full">
<header id="hd" >
	
		<%@ include file="nav.jsp" %>
	
</header>
<div class="content" >
	<div class="container-fluid">
	<br><br><br><br><br><br><br><br>
		<h2 class="title">로그인</h2>
		<form id="frm1" name="login" action="loginPro.jsp" method="post" role="form" class="form-horizontal">
			<ul class="form_wrap">
				<li><input type="text" class="indata" id="uid" name="uid" placeholder="아이디 입력" required autofocus></li>
				<li><input type="password" class="indata" id="upw" name="upw" placeholder="비밀번호 입력" required></li>
				<li class="btn_frame" style="padding-left:10px">
					<input type="submit" value="로그인" id="submit" class="btn btn-primary"> &nbsp; &nbsp; &nbsp; &nbsp;
					<input type="reset" value="취소" id="reset" class="btn btn-primary">
				</li>
			</ul>
		</form>	
	</div>
</div>
<footer id="ft" >
	<%@ include file="ft.jsp" %>
</footer>
</div>
</div>
</body>
</html>