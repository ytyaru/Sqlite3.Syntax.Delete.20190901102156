create table T(A integer);
insert into T values(0);
insert into T values(1);
insert into T values(9);

with recursive
  dels(x) as (values(1) union all select x+1 from dels where x<10)
delete from T where A in (select * from dels);
select * from T;

