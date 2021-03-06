REM Tara Walton - tara1984 - Assn 3, q1

REM Give an SQL schema definition for the employee database of Figure 3.20.
REM Choose an appropriate domain for each attribute and an appropriate primary key for each relation schema.

REM [30 points] Exercise 3.20 page 110. Include foreign key constraints where needed. Notice that the relation manages is recursive between employee and employee (similar to the relations prereq and course in the university database.) Also notice that both employee_name and manager_name are foreign keys in the relation manages referencing the relation employee. Be careful about the order you create the tables.

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
employee_name	varchar(20) primary key,
manager_name	varchar(20),
foreign key (employee_name) references works, 
foreign key (employee_name) references employee,
foreign key (manager_name) references employee);

