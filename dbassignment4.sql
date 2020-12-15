create database DBAssignment4;
use DBAssignment4;

create table department (
dept_id integer not null primary key,
dept_name varchar(50));

insert into department values (1,"Finance");
insert into department values (2,"Training");
insert into department values (3,"Marketing");
select *from department;

create table employee(
emp_id integer not null primary key,
emp_name varchar(20),
salary	integer(7),
dept_id integer(4),
CONSTRAINT dept_id_fk FOREIGN KEY (dept_id) REFERENCES department(dept_id));

insert into employee values(1,"Arun",8000,1);
insert into employee values(2,"Kiran",7000,1);
insert into employee values(3,"Scott",3000,1);
insert into employee values(4,"Max",9000,2);
insert into employee values(5,"Jack",8000,2);
insert into employee values(6,"King",6000,3);
select *from employee;

select dept_name,emp_name from department,employee where department.dept_id=employee.emp_id;

select e.emp_id,d.dept_id from employee e,department d where e.emp_id=d.dept_id;

select dept_id, sum(salary) from employee group by dept_id;

select e.emp_id,e.emp_name,d.dept_name from employee as e left join department as d on e.dept_id=d.dept_id order by emp_id;

select emp_name from employee where dept_id=emp_id;

select e.emp_name as  "employee name",d.dept_name as "department name" from employee e join department d on e.dept_id=e.emp_id;

create table emp1
(emp_no int not null,
emp_name varchar(20) not null);

insert into emp1 values(1,'a');
insert into emp1 values(2,'b');
insert into emp1 values(3,'c');

create table emp2
(emp_no int not null,
emp_name varchar(20) not null);

insert into emp2 values(1,'a');
insert into emp2 values(2,'b');
insert into emp2 values(3,'c');
insert into emp2 values(4,'d');

select* from emp1;
select* from emp2;

select* from emp1 union all select* from emp2;

select * from employee;

select * from employee where salary=( select min(salary) from employee);

select emp_name from employee where dept_id=(select dept_id from employee where emp_name='jack') and emp_name='jack';

select * from employee where salary in(select salary from employee group by salary having count(salary)>1);

update employee set salary=15000 where emp_name='max';
 select * from employee;
 
