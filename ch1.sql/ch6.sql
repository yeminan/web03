use academy;
select * from member_tbl_02;
select custno,phone,custname from member_tbl_02 order by custno;
select custname,phone,custno from member_tbl_02 where custname like '%파%';
select * from member_tbl_02 where joindate between '2015-10-01' and '2015-11-01';
select custname as '이름', phone as'핸드폰번호', address as'주소' from member_tbl_02;
select custno as'회원번호',sum(price) as '합계금액' from money_tbl_02 group by custno;