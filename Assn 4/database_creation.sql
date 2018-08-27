REM Tara Walton - tara1984 - Assn 4, creation

REM CLEAR TABLES ***************************************
drop table manages;
drop table works;
drop table company;
drop table employee;

REM CREATE TABLES***************************************
create table employee (
employee_name 	varchar(20) primary key, 
street 		varchar(20), 
city 		varchar(15));

create table company (
company_name	varchar(30) primary key,
city		varchar(15));

create table works (
employee_name 	varchar(20) primary key,
company_name 	varchar(30),
salary 		numeric(8, 2),
foreign key (employee_name) references employee);

create table manages (
employee_name	varchar(20),
manager_name	varchar(20),
foreign key (employee_name) references employee);

REM EMPLOYEE TABLE *************************************
insert into employee (employee_name, street, city)
values ('Tara', 'Sunmeadow', 'Nixa');

insert into employee (employee_name, street, city)
values ('Matthew', 'National Ave', 'Springfield');

insert into employee (employee_name, street, city)
values ('Brent', 'Republic Rd', 'Nixa');

insert into employee (employee_name, street, city)
values ('Brad', 'North St', 'Springfield');

insert into employee (employee_name, street, city)
values ('Jordan', 'Main St', 'Ozark');

insert into employee (employee_name, street, city)
values ('Keith', 'Main St', 'Ozark');

insert into employee (employee_name, street, city)
values ('Lauren', 'Ballet Rd', 'Springfield');

insert into employee (employee_name, street, city)
values ('Steven', 'National Ave', 'Springfield');

insert into employee
values ('Tyson', 'National Ave', 'Springfield');


REM COMPANY TABLE ***************************************
insert into company (company_name, city)
values ('MSU CSC', 'Springfield');

insert into company (company_name, city)
values ('Walmart', 'Nixa');

insert into company (company_name, city)
values ('First Bank Corporation', 'Springfield');

insert into company (company_name, city)
values ('Small Bank Corporation', 'Springfield');


REM WORKS TABLE *****************************************
insert into works (employee_name, company_name, salary)
values ('Tara', 'MSU CSC', 28000.00);

insert into works (employee_name, company_name, salary)
values ('Matthew', 'First Bank Corporation', 30000.00);

insert into works (employee_name, company_name, salary)
values('Brent', 'Small Bank Corporation', 52000.00);

insert into works (employee_name, company_name, salary)
values ('Brad', 'First Bank Corporation', 20500.50);

insert into works (employee_name, company_name, salary)
values ('Jordan', 'MSU CSC', 18500.00);

insert into works (employee_name, company_name, salary)
values ('Keith', 'Small Bank Corporation', 40500.00);

insert into works (employee_name, company_name, salary)
values ('Lauren', 'First Bank Corporation', 25250.00);

insert into works (employee_name, company_name, salary)
values ('Steven', 'MSU CSC', 30000.00);

insert into works
values ('Tyson', 'First Bank Corporation', 40000.00);


REM MANAGES TABLE ****************************************
insert into manages (employee_name)
values ('Tara');

insert into manages (employee_name, manager_name)
values ('Jordan', 'Steven');

insert into manages (employee_name, manager_name)
values ('Keith', 'Brent');

insert into manages (employee_name, manager_name)
values ('Lauren', 'Matthew');

insert into manages (employee_name, manager_name)
values ('Brad', 'Matthew');

insert into manages
values ('Matthew', 'Tyson');

insert into manages
values ('Brent', 'Tyson');

insert into manages(employee_name)
values ('Tyson');
