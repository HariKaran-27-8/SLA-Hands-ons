-- query-create,use,insert,select,alter,drop,truncate,delete

create database practice; -- database created 
use practice;              -- database come to use 

create table detail(reg_no int,name varchar(20),course varchar(20));   -- table created
select name,course from detail;                                        -- table viewed with select cmd

-- values inserted using insert cmd
insert into detail(reg_no,name,course) values (26,'gopi','python_fullstack'),(27,'hari','datascience'),(37,'naveen','mernstack'),(44,'thinabalan','python full stack');
select * from detail;

-- city column added using alter cmd 
alter table detail add city varchar(10);
select * from detail;

alter table detail modify city varchar(20);           -- city column modified with modify cmd

alter table detail change city location varchar(20);  -- city column renamed to location 
select * from detail;

alter table detail drop column location;              -- location column droped 
select * from detail;                                 -- location column doesn't exist in table 

rename table detail to student_detail;                -- table renamed to student_detail 
select * from detail;                                 -- table doesn't exist
select * from student_detail;                         -- table viewed 

delete from student_detail where course='datascience';-- deleting a row from table using delete cmd 
select * from student_detail;                         -- row not exist 

truncate table student_detail;                        -- all record are vanished
select * from student_detail;                         -- viewed with simple column name with no records

drop table student_detail;                            -- table droped 
select * from student_detail;                         -- table not exist 

-- 7/july/25 SQL task over....
