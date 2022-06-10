<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fmt - timeZone</title>
</head>
<body>
<h2>Timezone -지역시간대 </h2>
<c:set var="today" value="<%=new Date() %>"></c:set>
<p>${today }</p>
<h3>서울</h3>
<p>
<fmt:timeZone value="Aisa/Seoul">
	<fmt:formatDate value="${today }" pattern="yyyy/mm/dd EEEE a hh:mm:ss"/>
</fmt:timeZone>
</p>
<h3>도쿄</h3>
<p>
	<fmt:timeZone value="Aisa/Tokyo">
	<fmt:formatDate value="${today }" pattern="yyyy/mm/dd EEEE a hh:mm:ss"/>
	</fmt:timeZone>
</p>
<h3>미국</h3>
<p>
	<fmt:timeZone value="America/New_York">
	<fmt:formatDate value="${today }" pattern="yyyy/mm/dd EEEE a hh:mm:ss"/>
	</fmt:timeZone>
</p>
<p>
<h3>파리</h3>
	<fmt:timeZone value="Europe/Paris">
	<fmt:formatDate value="${today }" pattern="yyyy/mm/dd EEEE a hh:mm:ss"/>
	</fmt:timeZone>
</p>
<p>
<h3>모스크바</h3>
	<fmt:timeZone value="Europe/Moscow">
	<fmt:formatDate value="${today }" pattern="yyyy/mm/dd EEEE a hh:mm:ss"/>
	</fmt:timeZone>
</p>
</body>
</html>