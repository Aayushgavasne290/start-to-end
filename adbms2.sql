create database employeedb;
use employeedb;

create table employee(emp_no int primary key,ename varchar(40),eaddress varchar(40),ephoneno varchar(40),
deptno_ int,deptname varchar(40),jobid int,designation varchar(40),salary decimal(10,2), experience int, joindate date );

desc employee;

insert into employee values(1,'johm','pune',702077837,1,'finace',101,'manager',47747,10,'1986-06-1');
insert into employee values(2,'jghhm','pnumna',702087837,1,'sales',102,'mana',47797,1,'1945-06-1');
insert into employee values(3,'jokm','punhs',70209937,1,'mock',103,'hadr',67747,13,'1983-06-1');
insert into employee values(4,'jokhm','nge',702076437,1,'finace',104,'hr',37747,20,'1926-06-1');
insert into employee values(5,'johmnm','kjune',73477837,1,'silence',105,'head',27747,9,'1286-06-1');

select * from employee;

select emp_no ,ename,salary from employee where	designation ='manager';

select * from employee where joindate >='1982-01-01' order by designation asc;

select * from employee where salary >= 10000;

select ename,experience,salary,salary/30 as dailysalary from employee;

select *  from employee where designation ='manager' or designation ='mana';

select * from employee where joindate in('1986-06-01','1945-06-01');

select * from employee where deptno_ in (1);


select ename from employee where ename like'%g%';


select max(salary) as highest_salary from  employee;

select ename from employee where ename like 'j%';

select ename,left(ename,3) as first_five from employee where ename like 'j%';

select min(salary) as min_salary ,max(salary) as max_salary, min(experience) as min_exp,max(experience) as max_exp from employee;

select sum(salary) as total_slary from employee;

select avg(salary) as avg_salary from employee where deptname ='sales';

select distinct salary from employee;