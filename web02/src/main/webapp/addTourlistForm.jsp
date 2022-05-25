<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.incheon.model.CustomerVO" %>
<%@ page import="kr.go.incheon.model.ImpressionVO" %>
<%@ page import="kr.go.incheon.model.TourlistVO" %>
<%@ page import="kr.go.incheon.model.NoticeVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<title>문화 관광 방문지 등록하기</title>
</head>
<body>

<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
<!-- 이미지를 업로드하기 위해서는 enctype="multipart/form-data" 이어야 실제 이미지가 전송됨  -->
<form action="AddTourlistCtrl" name="tour_add" method="post" enctype="multipart/form-data">
	<table class="tb1">
		<tbody>
			<tr>
				<th>형태</th>
				<td>
					<select name="pid1" id="pid1" onchange="listData(this)" required>
						<option value="">선택안함</option>
						<option value="A">관광명소</option>
						<option value="B">축제이벤트</option>
						<option value="C">숙박업소</option>
						<option value="D">음식</option>
						<option value="E">축제및이벤트</option>
						<option value="F">레저,체험,교통</option>
						<option value="G">추천여행기타</option>
					</select>
					<input type="hidden" name="ptype" id="ptype" />
				</td>
			</tr>
			<tr>
				<th>세부종류</th>
				<td>
					<select name="pid2" id="pid2">
					
					</select>
				</td>
			</tr>
			<tr>
				<th>방문지 이름</th>
				<td>
					<input type="text" name="pname" id="pname" class="in_data" required>
					
				</td>
			</tr>
			<tr>
				<th>방문지 설명</th>
				<td>
					<textarea cols="100" rows="5" name="pcoment" id="pcoment" class="in_area" required></textarea>
				</td>
			</tr>
			<tr>
				<th>배너 이미지 추가</th>
				<td>
					<input type="file" accept="image/png, image/jpeg, image/gif" name="pimg1" id="pimg1">
				</td>
			</tr>
			<tr>
				<th>설명 이미지1 추가</th>
				<td>
					<input type="file" accept="image/png, image/jpeg, image/gif" name="pimg2" id="pimg2">
				</td>
			</tr>
			<tr>
				<th>설명 이미지2 추가</th>
				<td>
					<input type="file" accept=".img.munhaksan/jpg, image/jpeg, image/gif" name="pimg3" id="pimg3">
				</td>
			</tr>
			<tr>
				<th>썸네일 이미지 추가</th>
				<td>
					<input type="file" accept="image/png, image/jpeg, image/gif" name="pimg4" id="pimg4">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="추가" class="frm_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
					<input type="reset" value="취소" class="frm_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="/web02/GetTourListCtrl" class="frm_btn">목록</a>
				</td>
			</tr>
		</tbody>
	</table>
</form>
<script>
function listData(v) {
	var arr = [[],[],[],[],[],[],[]];
	var chr = [["산","바다","섬","도시","문화재및유적","전시장", "기타"],
		["축제","체험관광","박물관/기념관","전시/미술관","휴양관광", "역사문화", "기타문화축제"],
		["호텔","모텔","리조트","콘도","게스트하우스","캠핑","기타숙소"],
		["음식문화거리","한식","양식","일식","중식","아시아식","바/카페","기타음식업소"],
		["빛축제","음악축제","박람회","공연","낭만시장","문화재야행축제","기타축제"],
		["캠핑","낚시","걷기길","레일바이크","생태탐방로","기타체험"],
		["공항철도","도시철도","수도권전철","종합터미널"]
		["유람선","보트하우스","시티투어","이야기투어","바다열차"];
/*
--pid 첫 번째 문자 설명 : A관광명소, B축제이벤트, C숙박업소, D음식, E축제및이벤트. F레저,체험,교통 G추천여행기타
--pid 두 번째 구분코드 설명 A- 11:산, 12:바다, 13:섬, 14:도시, 15:문화재및유적, 16:전시장, 17:기타
--pid 두 번째 구분코드 설명 B- 11:축제, 12:체험관광, 13:박물관/기념관, 14:전시/미술관/ 15:휴양관광 16:역사문화, 17:기타문화축제
--pid 두 번째 구분코드 설명 C- 11:호텔, 12:모텔, 13:리조트, 14:콘도, 15:게스트하우스, 16:캠핑, 17:기타숙소 
--pid 두 번째 구분코드 설명 D- 11:음식문화거리, 12:한식, 13:양식, 14:일식, 15:중식, 16:아시아식, 17:바/카페, 18:기타음식업소
--pid 두 번재 구분코드 설명 E- 11:빛축제, 12:음악축제, 13:박람회, 14:공연, 15:낭만시장, 16:문화재야행축제, 17:기타축제
--pid 두 번째 구분코드 설명 F- 11:캠핑, 12:낚시, 13:걷기길, 14:레일바이크, 15:생태탐방로 16:기타체험
--                              21:공항철도, 22:도시철도, 23:수도권전철, 24:종합터미널
--                              31:유람선, 32:보트하우스, 33:시티투어, 34:이야기투어, 35:바다열차
--pid 두 번재 구분코드 설명 G- 11:추천여행 */
	if(v.value=='A') {
		$("#pid2").empty();
		document.tour_add.ptype.value = "place";
		for(var i=0;i<chr[0].length;i++){
			$("#pid2").append("<option value="+(i+11)+">"+chr[0][i]+"</option>");
		}		
	}
	if(v.value=='B') {
		document.tour_add.ptype.value = "experience";
		$("#pid2").empty();
		for(var i=0;i<chr[1].length;i++){
			$("#pid2").append("<option value="+(i+11)+">"+chr[1][i]+"</option>");
		}		
	}
	if(v.value=='C') {
		document.tour_add.ptype.value = "hotel";
		$("#pid2").empty();
		for(var i=0;i<chr[2].length;i++){
			$("#pid2").append("<option value="+(i+11)+">"+chr[2][i]+"</option>");
		}		
	}
	if(v.value=='D') {
		document.tour_add.ptype.value = "food";
		$("#pid2").empty();
		for(var i=0;i<chr[3].length;i++){
			$("#pid2").append("<option value="+(i+11)+">"+chr[3][i]+"</option>");
		}		
	}
	if(v.value=='E') {
		document.tour_add.ptype.value = "market";
		$("#pid2").empty();
		for(var i=0;i<chr[4].length;i++){
			$("#pid2").append("<option value="+(i+11)+">"+chr[4][i]+"</option>");
		}		
	}
	if(v.value=='F') {
		document.tour_add.ptype.value = "festival";
		$("#pid2").empty();
		for(var i=0;i<chr[5].length;i++){
			$("#pid2").append("<option value="+(i+11)+">"+chr[5][i]+"</option>");
		}		
	}
	if(v.value=='G') {
		document.tour_add.ptype.value = "traffic";
		$("#pid2").empty();
		for(var i=0;i<chr[6].length;i++){
			$("#pid2").append("<option value="+(i+11)+">"+chr[6][i]+"</option>");
		}		
	}
}
</script>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>