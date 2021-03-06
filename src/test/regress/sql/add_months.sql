set grammar to oracle;
set datestyle='ISO,YMD';
create table aa(id int, dt timestamp);
insert into aa values(1,to_date('2000-3-31','YYYY-MM-DD'));
insert into aa values(2,to_date('2000-2-29','YYYY-MM-DD'));
select add_months(to_date('2000-3-31','YYYY-MM-DD'),1) from dual; 
select id, add_months(dt,1) from aa where id=1;
select add_months(to_date('2000-3-31','YYYY-MM-DD'),-1) from dual; 
select id, add_months(dt,1) from aa where id=1;
select add_months(to_date('2000-3-31','YYYY-MM-DD'),0) from dual; 
select id, add_months(dt,0) from aa where id=1;
select add_months(to_date('2000-2-29','YYYY-MM-DD'),12) from dual; 
select id, add_months(dt,12) from aa where id=2;
select add_months(to_date('2000-2-29','YYYY-MM-DD'),-12) from dual; 
select id, add_months(dt,-12) from aa where id=2;
select add_months(to_date('2000-2-29','YYYY-MM-DD'),12.1) from dual; 
select add_months(to_date('2000-2-29','YYYY-MM-DD'),-12.55) from dual; 
select add_months(to_date('1-2-28','YYYY-MM-DD'),-300) from dual;
select add_months(to_date('6000-2-29','YYYY-MM-DD'),30000) from dual;
select add_months(to_date('2000-2-29','YYYY-MM-DD'),'3') from dual;
select add_months(to_date('2000-2-29','YYYY-MM-DD'),'') from dual;
select add_months(to_date('2000-2-29','YYYY-MM-DD'),null) from dual;
select add_months(null,null) from dual;
select add_months('','') from dual;
select add_months('',null) from dual;
select add_months(null,'') from dual;
select add_months('',3) from dual;
drop table aa;
