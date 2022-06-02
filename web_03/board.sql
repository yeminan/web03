create table board(seq number primary key,
title varchar2(100) not null,
content varchar2(500) not null,
regdate date,
id varchar2(20)not null,
visit number );
commit;

insert into board values(1,'글제목1 입니다','글내용1 입니다',sysdate,'lmh',0);
insert into board values((select nvl(max(seq), 0)+1 from board), '글제목2 입니다.', '글내용2 입니다',sysdate, 'admin',0);
insert into board values((select nvl(max(seq), 0)+1 from board), '글제목3 입니다.', '글내용3 입니다',sysdate, 'LLL',0);
insert into board values((select nvl(max(seq), 0)+1 from board), '글제목4 입니다.', '글내용4 입니다',sysdate, 'WWW',0);
insert into board values((select nvl(max(seq), 0)+1 from board), '글제목5 입니다.', '글내용5 입니다',sysdate, 'DDD',0);
insert into board values((select nvl(max(seq), 0)+1 from board), '글제목6 입니다.', '글내용6 입니다',sysdate, 'MMM',0);
select *from board;

update board set title=?, content=?, regdate=sysdate,  id=? where seq=?;

delete from board where seq=?;

select * from board;

create table member (userid varchar2(20) primary key,
userpw varchar2(300) not null,
email varchar2(100) not null,
tel varchar2(20) not null,
address varchar2(100) not null,
regdate date default sysdate,
birth date,
visited number default 0);
insert into member values('admin','1234','admin@naver.com','010-1234-1111','경기도 고양시 덕양구 주교동',sysdate,'1997-09-04','1');
insert into member values('lmh','1111','lmh@naver.com','010-1111-1111','경기도 고양시 덕양구 행신동',sysdate,'1987-12-31','2');
insert into member values('hhh','2222','hhh@naver.com','010-2222-2222','경기도 고양시 덕양구 성사동',sysdate,'1977-11-11','3');
insert into member values('lee','3333','lee@naver.com','010-3333-3333','경기도 고양시 덕양구 흥도동',sysdate,'1967-10-10','4');
insert into member values('kim','4444','kim@naver.com','010-4444-4444','경기도 고양시 덕양구 원흥동',sysdate,'1957-09-09','5');
insert into member values('park','5555','park@naver.com','010-5555-5555','경기도 고양시 덕양구 능곡동',sysdate,'1947-08-08','6');
insert into member values('jung','6666','jung@naver.com','010-5555-5555','경기도 고양시 덕양구 정발산동',sysdate,'1937-07-07','7');
select * from member;

commit;

create table leaders(
lcode number primary key,
ltitle varchar2(100),
lamount number,
lprice number,
lcategory varchar2(50),
limg varchar2(500),
lcontent varchar(3000),
ldelivery number);

select * from leaders;

insert into leaders values(1,10,1500,'칫솔','img/leaderssill.png','어린이일회용 칫솔','2000');
insert into leaders values(2,10,2000,'치실','img/leaderssill.png','어린이일회용 치실','2000');
insert into leaders values(3,10,3000,'치간칫솔','img/leaderssill.png','치간칫솔 가정용','2500');
insert into leaders values(4,10,12000,'틀니용품','img/leaderssill.png','틀니용품세트','2500');
insert into leaders values(4,10,12000,'틀니용품','img/leaderssill.png','틀니용품세트','2500');
insert into leaders values(4,10,12000,'틀니용품','img/leaderssill.png','틀니용품세트','2500');
insert into leaders values(4,10,12000,'틀니용품','img/leaderssill.png','틀니용품세트','2500');
insert into leaders values(4,10,12000,'틀니용품','img/leaderssill.png','틀니용품세트','2500');
insert into leaders values(4,10,12000,'틀니용품','img/leaderssill.png','틀니용품세트','2500');
insert into leaders values(4,10,12000,'틀니용품','img/leaderssill.png','틀니용품세트','2500');
insert into leaders values(4,10,12000,'틀니용품','img/leaderssill.png','틀니용품세트','2500');
insert into leaders values(4,10,12000,'틀니용품','img/leaderssill.png','틀니용품세트','2500');

CREATE TABLE db_access (
  no number primary key,
  request_uri varchar(100),
  query_string varchar(200),
  remote_address varchar(30),
  server_name varchar(60),
  server_port varchar(10),
  locale varchar(20),
  browser varchar(200),
  referer varchar(255),
  session_id varchar(80),
  user_id varchar(20),
  response_time number,
  reg_date date default sysdate
);


create table basket(bno number primary key, -- 장바구니번호
userid varchar2(20),    -- 사용자아이디
gno number,             -- 상품코드
gcolor varchar2(40),    -- 색상
amount number,          -- 수량
gsize varchar2(40),     -- 크기
bdate Date);            -- 장바구니 담긴 날짜

select * from BASKET;
insert into basket values ((select nvl(max(bno), 0)+1 from basket), ?, ?, ?, ?, ?, sysdate);

--장바구니 정보 변경
update BASKET set gno=?, gcolor=?, amount=?, gisze=?, bdate=sysdate where bno;

--결제테이블
create table payment(ono number primary key, -- 결제번호
    paytype varchar2(20),   -- 결제방식
    payno varchar2(30),     -- 결제카드번호
    money number,           -- 결제금액
    sdate date,             -- 결제일
    gno number,             -- 상품코드
    amount number,          -- 수량
    userid varchar2(20),    -- 사용자아이디
	rname varchar2(30),     -- 수신자명
    tel varchar2(20),       -- 수신자전화번호
    addr1 varchar2(200),    -- 수신자 기본주소
    addr2 varchar2(100),    -- 수신자 상세주소
    postcode varchar2(10),  -- 수신자 우편번호
    transno varchar2(50),   -- 배송코드
    transco varchar2(50),   -- 배송회사
    rstatus varchar2(20),   -- 수신상태
    rdate date,             -- 도착일
	memo varchar2(100)     -- 메모
);

--결제테이블
select * from payment;