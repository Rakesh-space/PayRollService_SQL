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

select * from employee_payroll;
insert into employee_payroll values ('Rakesh',5000,'2019-03-01');

