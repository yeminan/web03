use academy;
select * from member_tbl_02;
select * from money_tbl_02;
select * from saleno_tbl_02;
select custname,phone,address from member_tbl_02 order by custno; 
select custname,phone,custno from member_tbl_02 where custname like '%복%';
select * from member_tbl_02 where joindate between '2015-10-01' and '2015-11-30';
select custname as '이름', phone as '전화번호',  address as '주소'from member_tbl_02;
select custno as '번호' ,sum(price) as '합계금액' from money_tbl_02 group by custno; 
select custno as '번호' ,avg(price) as '평균' from money_tbl_02 group by custno;
select custno as '번호' ,max(price) as '최대금액' from money_tbl_02 group by custno;
select custno as '번호' ,min(price) as '최소금액' from  money_tbl_02 group by custno;
select custno as '번호' , count(*) as '건수'  from money_tbl_02 group by custno;
create view money_view as select custno,saleno,pcost,amount,price from money_tbl_02 where price>='1500'; 
select * from money_view;
select a.custno,a.custname,a.address,sum(b.price) as '합계금액' from member_tbl_02 a inner join money_tbl_02 b on a.custno=b.custno group by a.custno;
select custno,pcost,amount, price from money_tbl_02 where custno in (select custno from member_tbl_02 where address like '서울%')