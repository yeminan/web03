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


create table member (userid varchar2(20) primary key,
userpw varchar2(300) not null,
email varchar2(100) not null,
tel varchar2(20) not null,
address varchar2(100) not null,
regdate date default sysdate,
birth date,
visited number default 0);

select * from member;
commit;

