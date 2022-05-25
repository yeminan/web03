package kr.go.incheon.model;

import java.util.Date;

public class ImpressionVO {
	private int ino;
	private String ititle; 
	private String iplace;
	private Date itodate;
	private Date ifromdate;
	private String icontent;
	private String ipic1; 
	private String ipic2; 
	private String cid;
	private String ipw;
	private Date idate;
//	private String idate date default sysdate;
	private int viewcnt;
	
	
	public int getIno() {
		return ino;
	}
	public void setIno(int ino) {
		this.ino = ino;
	}
	public String getItitle() {
		return ititle;
	}
	public void setItitle(String ititle) {
		this.ititle = ititle;
	}
	public String getIplace() {
		return iplace;
	}
	public void setIplace(String iplace) {
		this.iplace = iplace;
	}

	public Date getItodate() {
		return itodate;
	}
	public void setItodate(Date itodate) {
		this.itodate = itodate;
	}
	public Date getIfromdate() {
		return ifromdate;
	}
	public void setIfromdate(Date ifromdate) {
		this.ifromdate = ifromdate;
	}

	public String getIcontent() {
		return icontent;
	}
	public void setIcontent(String icontent) {
		this.icontent = icontent;
	}
	public String getIpic1() {
		return ipic1;
	}
	public void setIpic1(String ipic1) {
		this.ipic1 = ipic1;
	}
	public String getIpic2() {
		return ipic2;
	}
	public void setIpic2(String ipic2) {
		this.ipic2 = ipic2;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getIpw() {
		return ipw;
	}
	public void setIpw(String ipw) {
		this.ipw = ipw;
	}
	
	public Date getIdate() {
		return idate;
	}
	public void setIdate(Date idate) {
		this.idate = idate;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	} 
	
}
