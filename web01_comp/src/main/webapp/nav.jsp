<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 	<div class="hd_wrap">
                <a href="index.jsp" class="logo">
                    <img src="./img/logo_on.png" alt="로고">
                </a>
 <nav id="gnb" >
                    <ul>
                        <li>
                            <span>회사소개</span>
                            <ul class="sub">
                                <li><a href="company.jsp#page1">기업개요</a></li>
                                <li><a href="company.jsp#page2">경영이념</a></li>
                                <li><a href="company.jsp#page3">CEO메시지</a></li>
                                <li><a href="company.jsp#page4">연혁</a></li>
                                <li><a href="company.jsp#page5">수상인증</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>사업영역</span>
                            <ul class="sub">
                                <li><a href="business.jsp#page1">물류</a></li>
                                <li><a href="business.jsp#page2">해운</a></li>
                                <li><a href="business.jsp#page3">유통</a></li>
                                <li><a href="business.jsp#page4">미래 신사업</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>ESG경영</span>
                            <ul class="sub">
                                <li><a href="manage.jsp#page1">ESG경영 성과</a></li>
                                <li><a href="manage.jsp#page2">사회책임경영</a></li>
                                <li><a href="manage.jsp#page3">고객만족경영</a></li>
                                <li><a href="manage.jsp#page4">품질경영</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>인재채용</span>
                            <ul class="sub">
                                <li><a href="competent.jsp#page1">WHY GLOVIS</a></li>
                                <li><a href="competent.jsp#page2">MEET GLOVIS</a></li>
                                <li><a href="competent.jsp#page3">직무소개</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>투자정보</span>
                            <ul class="sub">
                                <li><a href="investment.jsp#page1">경영정보</a></li>
                                <li><a href="investment.jsp#page2">재무정보</a></li>
                                <li><a href="investment.jsp#page3">주식정보</a></li>
                                <li><a href="investment.jsp#page4">IR정보</a></li>
                            </ul>
                        </li>
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
</div>
               