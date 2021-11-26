-----UC1 Create Database------
create database payroll_service;
 
 use payroll_service;
 --------UC2 Create Table----------
create table employee_payroll(
id int Identity(1,1) primary key,
name varchar(200),
salary float,
startDate date
);

---------------------UC4 Retrive Data into Table---------
select * from employee_payroll;

---------------------UC3 Insert Table----------------------
insert into employee_payroll values ('Rakesh',5000,'2019-03-01');
insert into employee_payroll values('shital',23000.20,'2-09-2016');
insert into employee_payroll values('Bill',12000.33,'2-11-2018');
insert into employee_payroll values('Meena',5500.200,'1-03-2019');
insert into employee_payroll values('Charli',456123,'2-02-2020');

---------------------UC5 Retrive Data into Table---------

select * from employee_payroll where name='Meena';

select *from employee_payroll where startDate between CAST('2018-03-01 ' as date) and GETDATE();

select salary from employee_payroll where id=4;

----------------------uc6 add one row in table Gender ----------------------------------------------
ALTER TABLE employee_payroll
ADD gender varchar(20);

-----------uc7 calculate sum, avg, min, max ,count and number of male female employee in table---------------
 update employee_payroll set gender ='F' where name = 'shital' ;

 select SUM(salary) as Basic_Pay FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
 select SUM(salary) as Basic_Pay FROM employee_payroll WHERE gender = 'M' GROUP BY gender;

 select * from employee_payroll;
select sum (salary) as Total_Sallary from employee_payroll;
select min (salary) as Minimum_Sallary from employee_payroll;
select max (salary) as Maximum_Sallary from employee_payroll;
select avg (salary) as Avarage_Sallary from employee_payroll;
select count (salary) as Number_of_Employee from employee_payroll;
select count (salary) as Number_of_Employee, gender  from employee_payroll  group by gender;

------uc8 adding Phone, Address, Department as default values ----------------------------------
ALTER TABLE employee_payroll ADD phone bigint;

ALTER TABLE employee_payroll ADD Address varchar(200) default'pune';
ALTER TABLE employee_payroll ADD Department varchar(200) not null default'HR';
