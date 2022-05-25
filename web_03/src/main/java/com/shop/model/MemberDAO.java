package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.BoardVO;
import com.shop.common.JDBCConnection;

public class MemberDAO {
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	String sql= "";
	int cnt= 0;
	public ArrayList<BoardVO> getBoardList(){
		ArrayList<BoardVO> list = null;
		try {
			conn=JDBCConnection.getConnection();
			sql= "select * from board";
			pstmt = conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			list=new ArrayList<BoardVO>();
			while(rs.next()) {
				BoardVO vo=new BoardVO();
				vo.setSeq(rs.getInt("seq"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setRegdate(rs.getDate("regdate"));
				vo.setId(rs.getString("id"));
				vo.setVisit(rs.getInt("visit"));
				list.add(vo);
			}
		}catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 실패되었습니다.");
			e.printStackTrace();
		}catch(SQLException e) {
			System.out.println("SQL구문이 처리되지 못했습니다");
			e.printStackTrace();
		}catch(Exception e) {
			System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
			e.printStackTrace();
		}finally {
			JDBCConnection.close(rs,pstmt,conn);
		}
		return list;
	}
	
		public BoardVO getBoard(int seq) {
			BoardVO vo = new BoardVO();
			try {
				conn = JDBCConnection.getConnection();
				sql="selec * from board where seq=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, seq);
				rs =pstmt.executeQuery();
				if(rs.next()) {
					vo.setSeq(rs.getInt("seq"));
					vo.setTitle(rs.getString("title"));
					vo.setContent(rs.getString("content"));
					vo.setRegdate(rs.getDate("regdate"));
					vo.setId(rs.getString("id"));
					vo.setVisit(rs.getInt("visit"));
				}	
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}catch(SQLException e) {
				e.printStackTrace();
			}catch(Exception e) {
				
			}finally {
				JDBCConnection.close(rs,pstmt,conn);
			}
			return vo;
		}
		public ArrayList<BoardVO> getConditionSearch(String condition, String keyword) {
			ArrayList<BoardVO> boardList = null; 
			try {
				conn = JDBCConnection.getConnection();
				if(condition.equals("title")) {
					sql = "select * from board where title like ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, "%"+keyword+"%");
				} else {
					sql = "select * from board where content like ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, "%"+keyword+"%");
				}
				rs = pstmt.executeQuery();
				boardList = new ArrayList<BoardVO>();
				while(rs.next()) {
					BoardVO board = new BoardVO();
					board.setSeq(rs.getInt("seq"));
					board.setTitle(rs.getString("title"));
					board.setContent(rs.getString("content"));
					board.setId(rs.getString("id"));
					board.setRegdate(rs.getDate("regdate"));
					board.setVisit(rs.getInt("visit"));
					boardList.add(board);
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
			return boardList; 
		}
		public int addBoard(BoardVO vo) {
			try {
					conn = JDBCConnection.getConnection();
					sql="insert into board values((select nvl(max(seq).0)+1 from board),?,?,sysdate,?, 0)";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1,vo.getTitle());
					pstmt.setString(2,vo.getContent());
					pstmt.setString(3,vo.getId());
					cnt = pstmt.executeUpdate();	
					
			}catch(ClassNotFoundException e) {
				System.out.println("드라이버 로딩이 실패되었습니다");
				e.printStackTrace();
			}catch(SQLException e) {
				System.out.println("SQL구문이 처리되지 못했습니다");
				e.printStackTrace();
			}catch(Exception e) {
				System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다");
				e.printStackTrace();
			}finally {
				JDBCConnection.close(pstmt,conn);
			}
			return cnt;
		}
		public int editBoard(BoardVO vo) {
			try {
					conn = JDBCConnection.getConnection();
					sql="update board set title=?, content=?,regdate=sysdate,id=? where seq=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1,vo.getTitle());
					pstmt.setString(2,vo.getContent());
					pstmt.setString(3,vo.getId());
					pstmt.setInt(4,vo.getSeq());
					cnt = pstmt.executeUpdate();	
			}catch(ClassNotFoundException e) {
				System.out.println("드라이버 로딩이 실패되었습니다");
				e.printStackTrace();
			}catch(SQLException e) {
				System.out.println("SQL구문이 처리되지 못했습니다");
				e.printStackTrace();
			}catch(Exception e) {
				System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다");
				e.printStackTrace();
			}finally {
				JDBCConnection.close(pstmt,conn);
			}
			return cnt;
		}
		public int delBoard(BoardVO vo) {
			try {
					conn = JDBCConnection.getConnection();
					sql="delete from board where seq=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1,vo.getSeq());
					cnt = pstmt.executeUpdate();	
			}catch(ClassNotFoundException e) {
				System.out.println("드라이버 로딩이 실패되었습니다");
				e.printStackTrace();
			}catch(SQLException e) {
				System.out.println("SQL구문이 처리되지 못했습니다");
				e.printStackTrace();
			}catch(Exception e) {
				System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다");
				e.printStackTrace();
			}finally {
				JDBCConnection.close(pstmt,conn);
			}
			return cnt;
		}
		
}

