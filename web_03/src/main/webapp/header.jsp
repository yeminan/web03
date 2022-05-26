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
     <img src="${path }/image_readtop_.jpg" width="500" height="350">
    </a>
    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="gnb" class="navbar-menu">
    <div class="navbar-start">
	      <div class="navbar-item has-dropdown is-hoverable">
	      <a class="navbar-link">
	      	ABOUTUS
	      </a>
	      <a class="navbar-link">
	      	칫솔
	      </a>
		   <div class="navbar-item has-dropdown is-hoverable">
	      <a class="navbar-link">
	        치실
	      </a>
	       <div class="navbar-dropdown">
	      <a class="navbar-item">
	        슬렉스
	      </a>
	        <a class="navbar-item">
			데님
			</a>
			<a class="navbar-item">
			청바지
			</a>
			<a class="navbar-item">
			반바지
			</a>
			<a class="navbar-item">
			면바지
			</a>
		   </div>
		   <div class="navbar-item has-dropdown is-hoverable">
	      <a class="navbar-link">
	       	치실
	      </a>
	       <div class="navbar-dropdown">
	      <a class="navbar-item">
	        자켓
	      </a>
	        <a class="navbar-item">
			점퍼
			</a>
			<a class="navbar-item">
			Best
			</a>
			<a class="navbar-item">
			코트
			</a>
			<a class="navbar-item">
			가디건
			</a>
		   </div>
		   <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		          제품안내
		        </a>
		
		   <div class="navbar-dropdown">
		          <a class="navbar-item" href="GetDiscountListCtrl">
		            상의
		          </a>
		          <a class="navbar-item">
		            하의
		          </a>
		          <a class="navbar-item">
		            신발
		          </a>
		          <a class="navbar-item">
		            악세서리
		          </a>	        
		   </div>
      </div>
		        <div class="navbar-item has-dropdown is-hoverable">
			        <a class="navbar-link">
			         쇼핑몰 안내
			        </a>
		
		        <div class="navbar-dropdown">
		          <a class="navbar-item">
		            오시는길
		          </a>
		          <a class="navbar-item">
		            고객센터
		          </a>
		          <a class="navbar-item">
		            1:1문의
		          </a>
		          <hr class="navbar-divider">
		          <a class="navbar-item">
		            쇼핑몰 찾아가기
		          </a>
		        </div>
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
	          <a href="" class="button is-light">
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
		            회원관리
		          </a>
		          <a class="button is-light">
		            제품관리
		          </a>
		          <a class="button is-light">
		            판매관리
		          </a>
		          <a class="button is-light">
		            로그아웃
		          </a>
		        </div>
		      </div>
		      </c:if>
		    </div>
		  </div>
		</nav>
	</div>
</header>