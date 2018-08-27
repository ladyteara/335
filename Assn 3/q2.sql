REM Tara Walton - tara1984 - Assn 3, q2

REM [20 points] Populate the tables you created for the previous question with data. 
REM Be careful about the order you populate the tables with data.

REM INSERT INTO (table) (att1, att2, att3)
REM VALUES('att1', 'att2', 'att3');

REM EMPLOYEE TABLE *************************************
insert into employee (employee_name, street, city)
values ('Tara Walton', '803 National Ave', 'Springfield');

insert into employee (employee_name, street, city)
values ('Matthew Addler', '14436 National Ave', 'Springfield');

insert into employee (employee_name, street, city)
values ('Brent Eaves', '123 Republic Rd', 'Nixa');

insert into employee (employee_name, street, city)
values ('Brad Light', '4567 North St', 'Springfield');

insert into employee (employee_name, street, city)
values ('Jordan Hadden', '1000 Main St', 'Ozark');

insert into employee (employee_name, street, city)
values ('Keith Cissell', '9876 Main St', 'Ozark');

insert into employee (employee_name, street, city)
values ('Lauren Hoehne', '123 Ballet Rd', 'Springfield');

insert into employee (employee_name, street, city)
values ('Steven Senger', '1010 National Ave', 'Springfield');


REM COMPANY TABLE ***************************************
insert into company (company_name, city)
values ('MSU CSC', 'Springfield');

insert into company (company_name, city)
values ('Walmart', 'Nixa');

insert into company (company_name, city)
values ('First Bank Corporation', 'Springfield');


REM WORKS TABLE *****************************************
insert into works (employee_name, company_name, salary)
values ('Tara Walton', 'MSU CSC', 28000.00);

insert into works (employee_name, company_name, salary)
values ('Matthew Addler', 'Walmart', 30000.00);

insert into works (employee_name, company_name, salary)
values('Brent Eaves', 'First Bank Corporation', 52000.00);

insert into works (employee_name, company_name, salary)
values ('Brad Light', 'Walmart', 20500.50);

insert into works (employee_name, company_name, salary)
values ('Jordan Hadden', 'MSU CSC', 18500.00);

insert into works (employee_name, company_name, salary)
values ('Keith Cissell', 'First Bank Corporation', 40500.00);

insert into works (employee_name, company_name, salary)
values ('Lauren Hoehne', 'Walmart', 25250.00);

insert into works (employee_name, company_name, salary)
values ('Steven Senger', 'MSU CSC', 30000.00);


REM MANAGES TABLE ****************************************
insert into manages (employee_name, manager_name)
values ('Tara Walton', 'Steven Senger');

insert into manages (employee_name, manager_name)
values ('Jordan Hadden', 'Steven Senger');

insert into manages (employee_name, manager_name)
values ('Keith Cissell', 'Brent Eaves');

insert into manages (employee_name, manager_name)
values ('Lauren Hoehne', 'Matthew Addler');

insert into manages (employee_name, manager_name)
values ('Brad Light', 'Matthew Addler');
