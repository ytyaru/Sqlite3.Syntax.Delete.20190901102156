create table T(A integer);
create table U(A integer);
insert into T values(0);
insert into T values(1);
insert into U values(0);

select count(*) from T;
with 
  del0 as (select 1),
  del1 as (select 2 union select * from del0)
delete from T where A in (select * from del1);
select count(*) from T;

