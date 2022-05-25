use mysql;
create user test4;
create user test4@localhost identified by 'a1234';
create user test4@'%' identified by 'a1234';
grant all privileges on *.* to test4@localhost;
flush privileges;







-- 1) test4/a1234 의 사용자 계정을 추가 o
-- 2) test4 사용자에게 모든 데이터베이스의 모든 권한을 부여 o
-- 3) test4의 권한 내용을 갱신 o
-- 4) 터미널에서 test4로 mysql 접속 후 academy 데이터베이스에 접근하여 테이블 목록을 보고,
-- 원하는 테이블의 데이터를 검색해보고 접속 종료함
-- 5) test4 사용자에게 모든 데이터베이스의 모든 권한을 회수
-- 6) test4의 사용자를 제거

