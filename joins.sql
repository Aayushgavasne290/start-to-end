create database basicjoin;

use basicjoin;

create table employees(
     emp_id int primary key,
     ename varchar(40));
     
   desc employees;
   
   
   insert into employees (emp_id,ename) values
   (101,'aayush'),(102,'guarva'),(103,'rohan'),
   (104,'pranav'),(105,'rudrask');
   
   
   select * from employees;
   
   create table projects(
       project_id int primary key,
       pname varchar(40),
       emp_id int,
       foreign key(emp_id)
       references employees(emp_id));
       
       insert into projects(project_id,pname,emp_id)
       values(1,'projecta',101),
			 (2,'projectb',102),
             (3,'projectta',104),
             (4,'projectc',103),
			(5,'projectd',105);
       
       select * from projects;
       
       desc projects;
       
--        here we have used inner join in the below query
       select * from employees
       join projects on employees.emp_id = projects.emp_id;
       
       
       
       select e.ename , p.pname from employees e
       inner join projects p
       on e.emp_id = p.emp_id ;
       
         select e.ename , p.pname from employees e
       right join projects p
       on e.emp_id = p.emp_id ;
       
         select e.ename , p.pname from projects p
       right join  employees e
       on e.emp_id = p.emp_id ;
       
--        left join
select e.emp_id ,e.ename, p.pname from employees e 
left join projects p
on e.emp_id = p.emp_id ;        
       
       insert into project values(6,'projecctsx',105);
       insert into project values(9,'projecth',106);
       
       -- full outer join using -- union
-- --        display all matching pairs and non matching data from bothb tables

select * from employees
left join projects
on employees.emp_id = projects.emp_id
union
select * from employees
left join projects
on employees.emp_id = projects.emp_id;


select employees.ename , projects.pname from employees
left join projects on employees.emp_id = projects.emp_id
where projects.emp_id is null;



