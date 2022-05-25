<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] hd1 ={"회사소개","사업영역","ESG경영","인재채용","투자정보"};
	String[][] hd2 ={{"개요","CEO메시지","경영이념","연혁"},
	{"물류","해운","유통","미래신사업"},
	{"ESG경영 성과","사회책임경영","고객만족경영","안전보건환경"},
	{"WHYGLOVIS","MEETGLOVIS","직무소개","인사제도"},
	{"경영정보","재무정보","주식정보","IR정보","전자공고"}};
	
	String[][] h1={{"sub1.jsp#pag1","sub2.jsp#pag2","sub3.jsp#pag3","sub4.jsp#pag4"},
	{"sub1.jsp#mul","sub1.jsp#hae","sub1.jsp#utong","sub1.jsp#sinsa"},
	{"sub2.jsp#esg","sub2.jsp#sa","sub2.jsp#go","sub2.jsp#an"},
	{"sub3.jsp#whyglovis","sub3.jsp#meetglovis","sub3.jsp#sogae","sub3.jsp#cha"},
	{"sub4.jsp#ruddud","sub4.jsp#woan","sub4.jsp#wntlr", "sub4.jsp#IR","sub4.jsp#rhdrh"}};
%>
<a class="logo" href="index.jsp"><img src="./img/logo_on.png" alt="로고"></a>
<nav id="gnb" class="nav navbar-nav navbar-left">
<ul>
<%
	for(int i=0;i<hd1.length;i++){
%>	
	<li class="dropdown">
	<span class="hd1"><%=hd1[i] %></span>
	<ul class="sub">
<%
	for(int j=0;j<hd2[i].length;j++){	
%>
	<li><a class="dp2" href="<%=h1[i][j] %>"><%=hd2[i][j] %></a></li>
<%
}
%>
</ul>
<%
}
%>
</ul>
</nav>
<p id="tnb">
	<%
	String aid= (String) session.getAttribute("uid");
	String aname = (String)session.getAttribute("name");
	if(aid==null){		//방문자
	%>
	<a href="login.jsp">로그인</a>
	<a href="">손님</a>
	<a href="agree.jsp">회원가입</a>
	<%
	} else if(!aid.equals("admin")){ //일반회원
	%> 
	<a href="logout.jsp">로그아웃</a>
	<a href="mypage.jsp"><%=aname %></a>
	<a href="board1.jsp">게시판</a>
	<%
	}	else{
	%>
	<a href="mypage.jsp"><%=aname %></a>
	<a href="board1.jsp">게시판관리<%%></a>
	<a href="memberList.jsp">회원목록</a>
	<a href="join.jsp">조인</a>
	<a href="logout.jsp">로그아웃</a>
	<span id="msg_a"></span>
	<%
		}
	%>
</p>
<script>
	//주소 입력줄로 받은 msg를 받아 출력하는 부분임
	var url = location.href;  //url입력줄의 메시지를 포함한 주소를 저장
	var pos = url.indexOf("?msg=");
	var msg = url.substr(pos+5); //메시지만 추출
	var msg_a = document.getElementById("msg_a"); //해당 msg_a 아이디 요소 선택
	//msg_a.innerHTML = decodeURI(msg);
	if(pos>0) {
		if(msg!=""){
			msg_a.innerHTML = msg;
			alert(msg);
		}
	}
</script>

