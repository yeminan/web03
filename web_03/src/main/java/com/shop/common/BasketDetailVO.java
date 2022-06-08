package com.shop.common;

public class BasketDetailVO {
	private int bno;		//장바구니번호
	private String userid;	//사용자아이디
	private int gno;		//상품코드
	private String gcolor;	//색상
	private int amount;		//수량
	private String gsize;	//크기
	private String bdate;	//장바구니 등록일
	private String lcategory;    //상품카테고리
	private String ltitle;    	//장바구니 제품 상품명
	private int lprice; 		//장바구니 제품 가격
	private String lcontent;    //장바구니 제품 설명
	private String limg;  	//장바구니 제품 이미지
	private int lamount;
	private int ldelivery;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getGno() {
		return gno;
	}
	public void setGno(int gno) {
		this.gno = gno;
	}
	public String getGcolor() {
		return gcolor;
	}
	public void setGcolor(String gcolor) {
		this.gcolor = gcolor;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getGsize() {
		return gsize;
	}
	public void setGsize(String gsize) {
		this.gsize = gsize;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public String getLcategory() {
		return lcategory;
	}
	public void setLcategory(String lcategory) {
		this.lcategory = lcategory;
	}
	public String getLtitle() {
		return ltitle;
	}
	public void setLtitle(String ltitle) {
		this.ltitle = ltitle;
	}
	public int getLprice() {
		return lprice;
	}
	public void setLprice(int lprice) {
		this.lprice = lprice;
	}
	public String getLcontent() {
		return lcontent;
	}
	public void setLcontent(String lcontent) {
		this.lcontent = lcontent;
	}
	public String getLimg() {
		return limg;
	}
	public void setLimg(String limg) {
		this.limg = limg;
	}
	public int getLamount() {
		return lamount;
	}
	public void setLamount(int lamount) {
		this.lamount = lamount;
	}
	public int getLdelivery() {
		return ldelivery;
	}
	public void setLdelivery(int ldelivery) {
		this.ldelivery = ldelivery;
	}
	
}
