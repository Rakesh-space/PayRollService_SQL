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