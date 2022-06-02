package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.JDBCConnection;
import com.shop.common.LeadersVO;

public class LeadersDAO {
		private Connection conn=null;
		private PreparedStatement pstmt=null;
		private ResultSet rs = null;
		String sql="";
		int cnt = 0;
		
		public ArrayList<LeadersVO> getLeadersList() {
				ArrayList<LeadersVO> list = null;
				try {
					conn=JDBCConnection.getConnection();
					sql="select * from leaders";
					pstmt=conn.prepareStatement(sql);
					rs=pstmt.executeQuery();
					list =new ArrayList<LeadersVO>();
					while(rs.next()) {
						LeadersVO le= new LeadersVO();
						le.setLtitle(rs.getString("ltitle"));
						le.setLcode(rs.getInt("lcode"));
						le.setLamount(rs.getInt("lamount"));
						le.setLprice(rs.getInt("lprice"));
						le.setLcategory(rs.getString("lcategory"));
						le.setLimg(rs.getString("limg"));
						le.setLcontent(rs.getString("lcontent"));
						le.setLdelivery(rs.getInt("ldelivery"));
						list.add(le);
					}
				}catch(ClassNotFoundException e){
					System.out.println("드라이버 로딩이 실패되었습니다.");
					e.printStackTrace();
				} catch(SQLException e) {
					System.out.println("SQL구문이 처리되지 못했습니다.");
					e.printStackTrace();
				} catch(Exception e) {
					System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
					e.printStackTrace();
				}finally {
					JDBCConnection.close(rs,pstmt,conn);
				}
			return list;
		}
		public int addLeadersVO (LeadersVO le) {
			
			try {
				conn=JDBCConnection.getConnection();
				sql="insert into leaders values(select nvl(max(lcode), 0)+1 from leaders),?,?,?,?,?,?,?) ";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1,le.getLcode());
				pstmt.setString(2,le.getLtitle());
				pstmt.setInt(3,le.getLamount());
				pstmt.setInt(4,le.getLprice());
				pstmt.setString(5, le.getLcategory());
				pstmt.setString(6,le.getLimg());
				pstmt.setString(7,le.getLcontent());
				pstmt.setInt(8,le.getLdelivery());
				
				cnt=pstmt.executeUpdate();
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}catch(SQLException e) {
				e.printStackTrace();
			}catch(Exception e) {
				e.printStackTrace();
			}finally{
				JDBCConnection.close(pstmt, conn);
			}
			return cnt;	
						
		}
		public int editLeadersVO (LeadersVO le) {
			try {
			conn=JDBCConnection.getConnection();
			sql="update leaders set lamount=?,lprice=?,lcategory=?,limg=?,lcontent=?,ldelivery=?,lcode=? where ltitle=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, le.getLamount());
			pstmt.setInt(2,le.getLprice());
			pstmt.setString(3,le.getLcategory());
			pstmt.setString(4,le.getLimg());
			pstmt.setString(5,le.getLcontent());
			pstmt.setInt(6,le.getLdelivery());
			pstmt.setInt(7,le.getLcode());
			pstmt.setString(8,le.getLtitle());
			
			cnt=pstmt.executeUpdate();
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
				System.out.println("");
			}catch(SQLException e) {
				e.printStackTrace();
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				JDBCConnection.close(pstmt, conn);
			}
			return cnt;
		}
		public LeadersVO getLeaders(int lcode) {
			LeadersVO le=new LeadersVO();
			try {
				conn=JDBCConnection.getConnection();
				sql="select *from leaders where lcode=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, lcode);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					le.setLcode(rs.getInt("lcode"));
					le.setLtitle(rs.getString("ltitle"));
					le.setLamount(rs.getInt("lamount"));
					le.setLprice(rs.getInt("lprice"));
					le.setLcategory(rs.getString("lcategory"));
					le.setLimg(rs.getString("limg"));
					le.setLcontent(rs.getString("lcontent"));
					le.setLdelivery(rs.getInt("ldelivery"));
				}
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}catch(SQLException e) {
				e.printStackTrace();
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				JDBCConnection.close(pstmt, conn);
			}
			return le;
			
		}
		
		
		public int delLeaders(int lcode) {
			try {
				conn=JDBCConnection.getConnection();
				sql="delete *from leaders where lcode=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,lcode);
				cnt = pstmt.executeUpdate();
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}catch(SQLException e) {
				e.printStackTrace();
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				JDBCConnection.close(pstmt, conn);
			}
			return cnt;
		}
}
