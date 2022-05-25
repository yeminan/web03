<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
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
<body>
<meta charset="UTF-8">
<title>게시판목록</title>
<script src="//https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css"></script>
<script>
$(document).ready(function)(){
	$('#myTable').DataTable();
</script>  
<div class="container-full">
<header id="hd" class="panel-heading navbar navbar-default">
	<div class="hd_wrap container">
		<%@ include file="nav.jsp" %>
	</div>

</header>
<div class="content" class="panel-body">
	<div class="container-fluid">
		<h2>회원목록</h2>
		<table class="table" id="myTable">
			<thead>
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>게시글작성자</th>
				</tr>
			</thead>
			<tbody>	
    <!-- DB연결하는문장 -->
    <%@ include file="connectionPool.conf" %>
    <!-- 반복 실행 구간 시작 -->
    <%
    	sql = "select * from board";
    	pstmt = conn.prepareStatement(sql);
    	rs=pstmt.executeQuery();
    	while(rs.next()){
    %>
    <tr>
    	<td><a href="boardDetail.jsp"><%=rs.getInt("bno") %></a></td>
    	<td><a href='boardDetail.jsp?bno=<%=rs.getInt("bno") %>'><%=rs.getString("btitle") %></a></td>
    	<td><a href="boardDetail.jsp"><%=rs.getString("author") %></a></td>
    </tr>	
    <!--  반복 실행 구간 종료-->
    	<%
    	}
    	%>
    	<%@ include file="connectClose.conf" %>
    	<!--  DB 닫기문-->
		
    				</table>
    				<button onclick = "location.href='boardInser.jsp'">글쓰기</button>
    				<button onclick ="location href='boardDelete.jsp'">삭제</button>
    						</div>
    					</div>
    				</div>
    			</body>
			</head>
	</html>
