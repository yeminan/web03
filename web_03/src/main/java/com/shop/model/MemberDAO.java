package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;

import com.shop.common.JDBCConnection;
import com.shop.common.MemberVO;

public class MemberDAO {
	
		private Connection conn = null;
		private PreparedStatement pstmt = null;
		private ResultSet rs = null;
		String sql = "";
		int cnt = 0;
		public int addMember(MemberVO vo) { //회원가입
			String pw = Base64.getEncoder().encodeToString(vo.getUserpw().getBytes());
			try {
				conn = JDBCConnection.getConnection();
				sql = "insert into member values(?,?,?,?,?, sysdate, 0)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getUserid());
				pstmt.setString(2, pw);
				pstmt.setString(3, vo.getEmail());
				pstmt.setString(4, vo.getTel());
				pstmt.setString(5, vo.getAddress());
				pstmt.setString(6, vo.getRegdate());
				pstmt.setString(7, vo.getBirth());
				pstmt.setInt(8, vo.getVisited());
				cnt = pstmt.executeUpdate();
			} catch(ClassNotFoundException e) {
				System.out.println("드라이버 로딩이 실패되었습니다.");
				e.printStackTrace();
			} catch(SQLException e) {
				System.out.println("SQL구문이 처리되지 못했습니다.");
				e.printStackTrace();
			} catch(Exception e) {
				System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
				e.printStackTrace();
			} finally {
				JDBCConnection.close(pstmt, conn);
			}
			return cnt;
		}
		
		public int editMember(MemberVO vo) {  //회원정보수정
			String pw = Base64.getEncoder().encodeToString(vo.getUserpw().getBytes());
			try {
				conn = JDBCConnection.getConnection();
				sql = "update member set userpw=?, email=?, tel=?, address=?, birth=? where userid=?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, pw);
				pstmt.setString(2, vo.getEmail());
				pstmt.setString(3, vo.getTel());
				pstmt.setString(4, vo.getAddress());	
				pstmt.setString(5, vo.getBirth());
				pstmt.setString(6, vo.getUserid());
				cnt = pstmt.executeUpdate();
			} catch(ClassNotFoundException e) {
				System.out.println("드라이버 로딩이 실패되었습니다.");
				e.printStackTrace();
			} catch(SQLException e) {
				System.out.println("SQL구문이 처리되지 못했습니다.");
				e.printStackTrace();
			} catch(Exception e) {
				System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
				e.printStackTrace();
			} finally {
				JDBCConnection.close(pstmt, conn);
			}
			return cnt;
		}
		
		public int delMember(String uid) { //회원탈퇴
			try {
				conn = JDBCConnection.getConnection();
				sql = "delete from member where userid=?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, uid);
				cnt = pstmt.executeUpdate();
			} catch(ClassNotFoundException e) {
				System.out.println("드라이버 로딩이 실패되었습니다.");
				e.printStackTrace();
			} catch(SQLException e) {
				System.out.println("SQL구문이 처리되지 못했습니다.");
				e.printStackTrace();
			} catch(Exception e) {
				System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
				e.printStackTrace();
			} finally {
				JDBCConnection.close(pstmt, conn);
			}
			return cnt;
		}
		
		public int login(MemberVO vo) {  //로그인
			byte[] pwc; 
			try {
				conn = JDBCConnection.getConnection();
				sql = "select * from member where userid=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getUserid());
				rs = pstmt.executeQuery();
				if(rs.next()) {
					pwc = Base64.getDecoder().decode(rs.getString("userpw"));
					String pw = new String(pwc);
					if(vo.getUserpw().equals(pw)) { 
						cnt = 1;
					} else {
						cnt = 0;
					}
				} else {
					cnt = 0;
				}
			} catch(ClassNotFoundException e) {
				System.out.println("드라이버 로딩이 실패되었습니다.");
				e.printStackTrace();
			} catch(SQLException e) {
				System.out.println("SQL구문이 처리되지 못했습니다.");
				e.printStackTrace();
			} catch(Exception e) {
				System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
				e.printStackTrace();
			} finally {
				JDBCConnection.close(rs, pstmt, conn);
			}
			return cnt;
		}
		
		public int idCheck(String uid) { //아이디 중복체크
			try {
				conn = JDBCConnection.getConnection();
				sql = "select * from member where userid=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, uid);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					cnt = 1;
				} else {
					cnt = 0;
				}
			} catch(ClassNotFoundException e) {
				System.out.println("드라이버 로딩이 실패되었습니다.");
				e.printStackTrace();
			} catch(SQLException e) {
				System.out.println("SQL구문이 처리되지 못했습니다.");
				e.printStackTrace();
			} catch(Exception e) {
				System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
				e.printStackTrace();
			} finally {
				JDBCConnection.close(rs, pstmt, conn);
			}
			return cnt;
		}
		
		public ArrayList<MemberVO> getMemberList() {  //관리자 회원목록 보기
			ArrayList<MemberVO> list = null;
			try {
				conn = JDBCConnection.getConnection();
				sql = "select * from member";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				list = new ArrayList<MemberVO>();
				while(rs.next()) {
					MemberVO vo = new MemberVO();
					vo.setUserid(rs.getString("userid"));
					vo.setUserpw(rs.getString("userpw"));
					vo.setEmail(rs.getString("email"));
					vo.setTel(rs.getString("tel"));
					vo.setAddress(rs.getString("address"));
					vo.setRegdate(rs.getString("regdate"));
					vo.setBirth(rs.getString("birth"));
					vo.setVisited(rs.getInt("visited"));
					list.add(vo);
				}
			} catch(ClassNotFoundException e) {
				System.out.println("드라이버 로딩이 실패되었습니다.");
				e.printStackTrace();
			} catch(SQLException e) {
				System.out.println("SQL구문이 처리되지 못했습니다.");
				e.printStackTrace();
			} catch(Exception e) {
				System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
				e.printStackTrace();
			} finally {
				JDBCConnection.close(rs, pstmt, conn);
			}
			return list;
		}
		
		public MemberVO getMember(String uid) { //관리자 회원정보 상세보기
			MemberVO member = new MemberVO();
			try {
				conn = JDBCConnection.getConnection();
				sql = "select * from board where seq=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, uid);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					member.setUserid(rs.getString("userid"));
					member.setUserpw(rs.getString("userpw"));
					member.setEmail(rs.getString("email"));
					member.setTel(rs.getString("tel"));
					member.setAddress(rs.getString("address"));
					member.setRegdate(rs.getString("regdate"));
					member.setBirth(rs.getString("birth"));
					member.setVisited(rs.getInt("visited"));
				}
			} catch(ClassNotFoundException e) {
				System.out.println("드라이버 로딩이 실패되었습니다.");
				e.printStackTrace();
			} catch(SQLException e) {
				System.out.println("SQL구문이 처리되지 못했습니다.");
				e.printStackTrace();
			} catch(Exception e) {
				System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
				e.printStackTrace();
			} finally {
				JDBCConnection.close(rs, pstmt, conn);
			}
			return member;
		}
	
			public ArrayList<MemberVO> JSONMemberList() {  //관리자 회원목록을 JSON으로 내보내기
				ArrayList<MemberVO> list = null;
				byte[] pwc;
				try {
					conn = JDBCConnection.getConnection();
					sql = "select userid, userpw, email, tel, address, to_char(regdate, 'yyyy-MM-dd HH24:mi:ss') as cdate, visited from member";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					list = new ArrayList<MemberVO>();
					while(rs.next()) {
						MemberVO vo = new MemberVO();
						vo.setUserid(rs.getString("userid"));
						pwc = Base64.getDecoder().decode(rs.getString("userpw"));
						String pw =new String(pwc);
						vo.setUserpw(pw);
						vo.setEmail(rs.getString("email"));
						vo.setTel(rs.getString("tel"));
						vo.setAddress(rs.getString("address"));
						vo.setRegdate(rs.getString("cdate"));
						vo.setBirth(rs.getString("birth"));
						vo.setVisited(rs.getInt("visited"));
						list.add(vo);
					}
				} catch(ClassNotFoundException e) {
					System.out.println("드라이버 로딩이 실패되었습니다.");
					e.printStackTrace();
				} catch(SQLException e) {
					System.out.println("SQL구문이 처리되지 못했습니다.");
					e.printStackTrace();
				} catch(Exception e) {
					System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
					e.printStackTrace();
				} finally {
					JDBCConnection.close(rs, pstmt, conn);
				}
				return list;
				
			}
}
