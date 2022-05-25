package kr.go.incheon.model;

import java.util.Date;

public class NoticeVO {
		private int nno;
	 	private String ntitle; 
	    private String ncontent;
	    private String npic;
	    private Date resdate;
	    private String nname; 
	    private int viewcnt;
	    
		public int getNno() {
			return nno;
		}
		public void setNno(int nno) {
			this.nno = nno;
		}
		public String getNtitle() {
			return ntitle;
		}
		public void setNtitle(String ntitle) {
			this.ntitle = ntitle;
		}
		public String getNcontent() {
			return ncontent;
		}
		public void setNcontent(String ncontent) {
			this.ncontent = ncontent;
		}
		public String getNpic() {
			return npic;
		}
		public void setNpic(String npic) {
			this.npic = npic;
		}
		public Date getResdate() {
			return resdate;
		}
		public void setResdate(Date resdate) {
			this.resdate = resdate;
		}
		public String getNname() {
			return nname;
		}
		public void setNname(String nname) {
			this.nname = nname;
		}
		public int getViewcnt() {
			return viewcnt;
		}
		public void setViewcnt(int viewcnt) {
			this.viewcnt = viewcnt;
		}
	    
		
		
	    
}
