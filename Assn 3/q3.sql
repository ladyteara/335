REM Tara Walton - tara1984 - Assn 3, q3

REM [50 points] Exercise 3.16 page 109.
REM Consider the employee database of Figure 3.20, where the primary keys are underlined. Give an expression in SQL for each of the following queries.

REM **** a. Find the names of all employees who work for “First Bank Corporation”.
select employee_name
from works
where company_name = 'First Bank Corporation';


REM **** b. Find all employees in the database who live in the same cities as the companies for which they work.
select employee.employee_name
from employee, works, company
where company.city = employee.city 
	and employee.employee_name = works.employee_name 
	and company.company_name = works.company_name;


REM **** c. Find all employees in the database who live in the same cities and on the same streets as do their managers.
create table temp (
name 	varchar(20),
street 	varchar(20),
city	varchar (15));

insert into temp
select distinct manager_name, street, city
from manages, employee E 
where E.employee_name = manager_name;

select employee_name
from employee, temp 
where employee.street like '%temp.street%'
	and employee.city = temp.city;
		
drop table temp;


REM **** d. Find all employees who earn more than the average salary of all employees of their company.
select employee_name, salary
from works W
group by company_name
having salary > (select avg(salary)
		from works S);


REM **** e. Find the company that has the smallest payroll.	
select company_name
from works
group by company_name
having sum(salary) <= all(select sum(salary)
			from works
			group by company_name);