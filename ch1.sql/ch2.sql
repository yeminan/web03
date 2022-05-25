use mysql;
create user test3; -- 사용자 추가
select host, user from user; -- 사용자 목록 보기
create user test3@localhost identified by '1234'; -- localhost에 대한 암호 설정
create user test3@'%' identified by '1234';  -- 외부 접근시 암호설정
-- drop user 사용자아이디; 사용자제거
-- 권한 수행(권한 부여 - grant , 권환 회수 - revoke)
-- 1) 권한 부여 [넣어도되고 안넣어도되는 명령문 ]
-- grant sql명령 on 데이터베이스.테이블명 to 계정아이디@lacolhost [identified by '비밀번호'];
-- 2) 모든 데이터베이스와 테이블의 모든 권한 부여
-- grant all privileges on *.* to test3@localhost [identified by '1234' with grant];
-- 3) 권한에 대한 변경사항을 적용
-- flush privileges;
-- 4) 사용자 권한 보기
-- show grants for test3(계정)@localhost;
-- 5) 권한 회수
-- revoke sql명령 privileges on 데이터베이스.테이블명 from 계정아이디@lacolhost [identified by '비밀번호'];
-- 6) 모든 권한 회수
-- revoke all privileges on *.* to test3@localhost identified by '1234' with grant

