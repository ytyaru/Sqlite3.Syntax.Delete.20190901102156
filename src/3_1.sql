create table T(A integer);
insert into T values(0);
insert into T values(1);
delete from T where A > 1 limit 5;
select * from T;

