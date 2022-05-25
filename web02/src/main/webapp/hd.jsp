<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.incheon.model.CustomerVO" %>
<%@ page import="kr.go.incheon.model.ImpressionVO" %>
<%
	//로그인 여부 : sid와 sname이 null이 아니라면, 로그인 한 것임.
	String sid = (String) session.getAttribute("sid");
	String sname = (String) session.getAttribute("sname");
	if(sid!=null) sid=sid.trim().toLowerCase();
%>
		
<div class="hd_wrap">
	<nav id="gnb" >
		<ul>
			<li><a href="" class="menu1">인천광광지1</a>
			<ul class="sub">
		<%
		Connection conn = null;
		PreparedStatement pstmt= null;
		ResultSet rs= null;
		String sql="";
		
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
			sql= "select * from place";
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				if(rs.getString("ptype").equals("A")){
%>
								<li class="cate"><a href='PlaceCtrl?ptype=<%=rs.getString("ptype") %>&prop=<%=rs.getString("prop") %>'><%=rs.getString("propname") %></a></li>
<%
						}
					}
%>				
				</ul>
				<li>
				<li><a href="" class="menu1">문화축제</a>
				<ul class="sub">
<%					
				sql = "select * from place order by ptype, prop";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
					if(rs.getString("ptype").equals("B")){
%>						
			
		<li class="cate"><a href='PlaceCtrl?ptype=<%=rs.getString("ptype") %>&prop=<%=rs.getString("prop") %>'><%=rs.getString("propname") %></a></li>
<%							}
					}
%>
				</ul>
			</li>
<%
%>					
						</ul>
						<li>
						<li><a href="" class="menu1">숙박업소</a>
						<ul class="sub">
<%					
							sql = "select * from place order by ptype, prop";
							pstmt = conn.prepareStatement(sql);
							rs = pstmt.executeQuery();
						while(rs.next()){
							if(rs.getString("ptype").equals("C")){
%>						
						
						<li class="cate"><a href='PlaceCtrl?ptype=<%=rs.getString("ptype") %>&prop=<%=rs.getString("prop") %>'><%=rs.getString("propname") %></a></li>
<%							}
							}
%>
						</ul>
						
						</li>
						</ul>
<%
%>
				<li>
				<li><a href="" class="menu1">음식</a>
				<ul class="sub">
<%					
				sql = "select * from place order by ptype, prop";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
					if(rs.getString("ptype").equals("D")){
%>						
			
		<li class="cate"><a href='PlaceCtrl?ptype=<%=rs.getString("ptype") %>&prop=<%=rs.getString("prop") %>'><%=rs.getString("propname") %></a></li>
<%							}
					}
%>
				</ul>
			</li>
<%
%>
				<li>
				<li><a href="" class="menu1">축제 및 이벤트</a>
				<ul class="sub">
<%					
				sql = "select * from place order by ptype, prop";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
					if(rs.getString("ptype").equals("F")){
%>						
			
		<li class="cate"><a href='PlaceCtrl?ptype=<%=rs.getString("ptype") %>&prop=<%=rs.getString("prop") %>'><%=rs.getString("propname") %></a></li>
<%							}
					}
%>
				</ul>
			</li>
			<%
%>
				<li>
				<li><a href="" class="menu1">레저 체험 교통</a>
				<ul class="sub">
<%					
				sql = "select * from place order by ptype, prop";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
					if(rs.getString("ptype").equals("G")){
%>						
			
		<li class="cate"><a href='PlaceCtrl?ptype=<%=rs.getString("ptype") %>&prop=<%=rs.getString("prop") %>'><%=rs.getString("propname") %></a></li>
<%							}
					}
%>
				</ul>
			</li>
<%
%>
				<li>
				<li><a href="" class="menu1">추천여행기타</a>
				<ul class="sub">
<%					
				sql = "select * from place order by ptype, prop";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
					if(rs.getString("ptype").equals("H")){
%>						
			
		<li class="cate"><a href='PlaceCtrl?ptype=<%=rs.getString("ptype") %>&prop=<%=rs.getString("prop") %>'><%=rs.getString("propname") %></a></li>
<%							}
					}
%>
				</ul>
			</li>
<%
						
			}catch(Exception e){
			e.printStackTrace();
			}finally{
					try{
						rs.close();
						pstmt.close();
						conn.close();
					}catch(Exception e){
							e.printStackTrace();
				}
		}
%>							
			<li><a href="" class="menu1">관광명소</a>
			<ul class="sub">	
				<li class="cate">
							<dl>
									<dt>인천 관광지</dt>
									<dd><a href="">산</a></dd>
									<dd><a href="">바다</a></dd>
							</dl>
			
					</li>
				</ul>
			</li>
	</ul>
	</nav>
	<nav id="tnb">
	
	<ul>
		<% if (sid==null){ %>
		<li><span>손님</span></li>
		<li><a href="login.jsp">로그인</a></li>
		<li><a href="agreement.jsp">회원가입</a></li>
		<% }else if(sid.equals("admin")){ %>
			<li><span><%=sname %></span></li>
			<li><a href="/web02/GetCustomerListCtrl">회원 목록</a></li>
			<li><a href="/web02/GetImpressionListCtrl">방문지 목록</a></li>
			<li><a href="/web02/GetNoticeListCtrl">공지사항 목록</a></li>
			<li><a href="/web02/GetTourListCtrl">이용후기 목록</a></li>
			<li><a href="/web02/LogoutCtrl">로그아웃</a></li>
		<% }else { %>
			<li><span><%=sname %></span></li>
			<li><a href="/web02>GetMypageCtrl">마이페이지</a></li>
			<li><a href="/web02>GetUserCtrl">정보수정</a></li>
			<li><a href="/web02/LogoutCtrl">로그아웃</a></li>
		<%}%>	
		</ul>
	</nav>
</div>