create database Employee_db;
use Employee_db;

-- Create a table EMPLOYEE with following schema:
-- (Emp_no, E_name, E_address, E_ph_no, Dept_no, Dept_name,Job_id, Designation, Salary) 
create table Employeee(
emp_no int primary key,e_name varchar(40),e_address varchar(50),e_phone varchar(15),dept_no int,dept_name varchar(40),
job_id int,designation varchar(50),salary decimal(8,2),experience int,join_date date);

drop table Employeee;
truncate Employeee;

desc Employeee;
select * from Employeee;
insert into Employeee values(1,'rohan','pune','8638284356','10','finance',101,'Manager',20505.00,10,'1981-05-01');
insert into Employeee values(2,'rohit','pune','9838284356','15','it',102,'headManager',20800.00,12,'1981-12-17');
insert into Employeee values(3,'ram','pimpri','7638284356','20','sales',103,'president',40000.00,8,'1974-06-02');
insert into Employeee values(4,'soham','sangli','9638284356','12','hr',104,'clerk',22505.00,9,'1981-12-03');
insert into Employeee values(5,'sorav','satara','538284356','13','hr',105,'analyst',24505.00,15,'1980-01-19');
insert into Employeee values(6,'soav','satara','438284356','14','net',106,'headanalyst',27505.00,20,'2000-06-02');
insert into Employeee values(7,'harshit','satara','438284356','18','net',107,'headanalyst',27505.00,20,'2001-06-02');


select emp_no,e_name,salary from Employeee where designation='Manager';

select * from Employeee where salary >= 10000;

select * from Employeee where join_date >'1981-1-1' order by designation;


select e_name,experience,salary/30 as daily_salary from Employeee;

select * from Employeee where designation='clerk' or designation='analyst';

select e_name from Employeee where join_date in('1981-5-1','1981-12-3','1981-12-17','1980-01-19');

select * from Employeee where dept_no = 10 or dept_no = 20;

select * from Employeee where e_name like 's%';

select max(salary) as highest_salary from Employeee;

select e_name,left(e_name,5) as first_five from Employeee where e_name like 'H%';

select e_name from Employeee where designation not in('president','Manager') order by salary;

select min(salary) as minimum_salary,max(salary) as maximum_salary ,min(experience) as minexp,max(experience) as maxexp from Employeee;


select * from Employeee;
select sum(salary) as totalsalary from Employeee;

select avg(salary) as avgsalary from Employeee where dept_name='it';

select distinct salary from Employeee;

drop table Employeee;

drop database Employee_db;


