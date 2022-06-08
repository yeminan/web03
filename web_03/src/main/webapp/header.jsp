<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="path" value="${pageContext.request.contextPath }" /> 
<%
	String sid = "";
	if(session !=null) sid = (String) session.getAttribute("sid");  
%> 
<header id="header" class="panel-heading">
	<div class="hd_wrap">
	<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" href="${path }/index.jsp" id="logo">
     <img src="${path }/img/leaderslogo.PNG" width="220" height="37">
    </a>
    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>
  </nav>

  <div id="gnb" class="navbar-menu">
    <div class="navbar-start">
		      <div class="navbar-item has-dropdown is-hoverable">
				        <a class="navbar-link">
				         Leaders
				        </a>
				   <div class="navbar-dropdown">
				          <a class="navbar-item" href="">
				            회사소개
				          </a>
				          <a class="navbar-item">
				            자주묻는질문
				          </a>
				   </div>
		      </div>
	     	   <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		         ABOUTUS
		        </a>
		   <div class="navbar-dropdown">
		          <a class="navbar-item" href="">
		            회사소개
		          </a>
		          <a class="navbar-item">
		            자주묻는질문
		          </a>
		   </div>
	      </div>
			   <div class="navbar-item has-dropdown is-hoverable">
			        <a class="navbar-link">
		         칫솔
		        </a>
		   <div class="navbar-dropdown">
		          <a class="navbar-item" href="GetLeadersListCtrl">
		            성인
		          </a>
		          <a class="navbar-item">
		            청소년
		          </a>
		          <a class="navbar-item">
		            어린이
		          </a>
		          <a class="navbar-item">
		            유아
		          </a>
			   </div>
	      </div>

		 	   <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		        치간칫솔
		        </a>
		        </div>
	       	   <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		       틀니용품
		        </a>
		          <a class="navbar-item" href="GetDiscountListCtrl"></a>
      				</div>
      				
			<div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		          고객센터
		        </a>
		        <div class="navbar-dropdown">
		          <a class="navbar-item" href="${path }/GetBoardListCtrl">
		            공지사항
		          </a>
		          <a class="navbar-item">
		            자주하는 질문 및 답변
		          </a>
		          <a class="navbar-item">
		            상품문의
		          </a>
		          <a class="navbar-item">
		            배송문의
		          </a>
		          <a class="navbar-item">
		            취소/기타문의
		          </a>
		          <hr class="navbar-divider">
		          <a class="navbar-item">
		            환불안내
		          </a>
		          </div>
		     
	</div>
	</div>
	</div>
	</div>
	<c:if test="${empty sid }">
    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">
          <a href="${path }/member/agree.jsp" class="button is-primary">
            <strong>회원가입</strong>
          </a>
          <a href="${path }/member/login.jsp" class="button is-light">
            로그인
          </a>
          
        </div>
   		</div>
      </div>
      
   </c:if>
  
   
	 <c:if test="${!empty sid }">
	      <!-- 로그인 사용자 -->
	      <div class="navbar-item">
	        <div class="buttons">
	          <a href="${path }/myPageCtrl?userid=${sid }" class="button is-primary">
	            <strong>회원정보수정</strong>
	          </a>
	           <a href="${path }/GetBasketListCtrl" class="button is-light">
	            장바구니
	          </a>
	          <a href="${path }/member/myPage.jsp" class="button is-light">
	            마이페이지
	          </a>
	          
	          <a href="${path }/logOutCtrl" class="button is-light">
	            로그아웃
	          </a>
	        </div>
	      </div>
	      </c:if>
		      <!-- 관리자 -->
	  <c:if test="${sid=='admin' }">
		      <div class="navbar-item">
		        <div class="buttons">
		        	<a href="${path }/GetBoardListCtrl" class="button is-primary">	
		            <strong>글 관리</strong>
		          </a>
		         <a href="${path }/GetMemberListCtrl" class="button is-light">
		            회원관리</a>
		          <a href="${path }/GetLeadersListCtrl" class="button is-light">
		            제품관리
		            </a>
		            <a href="${path }/AccessListCtrl" class="button is-light">
		            접속자관리
		          </a>
		        </div>
		      </div>
		      
		      </c:if>
		  
		  
	
</header>