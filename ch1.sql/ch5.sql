-- 트랜잭션(Transaction) : 한 번에 같이 수행되어야함 일련의 명령수행의 집합
use academy;
show tables;
select * from money_tbl_02;
select * from sales_tbl_03;
select * from money_tbl_02, sales_tbl_03;
start transaction;
update sales_tbl_03 set price=600, amount=2 where saleno=20160008;
delete from money_tbl_02 where 20160008;
select * from money_tbl_02;
select * from sales_tbl_03;
rollback;
select * from money_tbl_02;
select * from sales_tbl_03;
commit;





