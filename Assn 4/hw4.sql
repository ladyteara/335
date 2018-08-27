REM Tara Walton - tara1984 - Assn 4, queries

set echo on
REM ****** QUESTION ONE *******
set echo off
/* Write a query to find those employees with no manager. Note that an employee may simply have no manager listed or may have a null manager. */

// a - outer join
SELECT employee_name
FROM employee NATURAL FULL OUTER JOIN manages
WHERE manager_name IS null;

// b - no outer join at all
SELECT e.employee_name
FROM employee e
WHERE not exists (SELECT m.employee_name
		  FROM manages m
		  WHERE m.employee_name = e.employee_name
			AND m.manager_name IS NOT null);


set echo on
REM ****** QUESTION TWO *******
set echo off
/*Assume that an employee may have more than one manager. Find names of managers who manage all the employees managed by Tyson. Notice that, these managers may manage other employees in addition to those managed by Tyson.*/

SELECT distinct manager_name
FROM manages 
WHERE manager_name IN (SELECT m.employee_name 
			    FROM manages m
			    WHERE m.manager_name = 'Tyson');


set echo on
REM ****** QUESTION THREE ******
set echo off
/* Use a scalar subquery (Hint: Section 3.8.7) to find the number of managers of each company. Schema of the output should be (company_name, num). Notice that, it is possible that a company may not have any managers, in which case the value 0 should be produced for num. */

SELECT company_name, count(distinct manager_name) AS num
FROM works LEFT OUTER JOIN manages ON works.employee_name = manages.employee_name
GROUP BY company_name;


set echo on
REM ****** QUESTION FOUR *******
set echo off
/* Find the salary of every manager. Schema of the output should be (manager_name, manager_salary). */

SELECT distinct m.manager_name, (SELECT salary
				FROM works w
				WHERE m.manager_name = w.employee_name) as manager_salary
FROM manages m;


set echo on
REM ****** QUESTION FIVE *******
set echo off
REM Using a with clause or a derived relation, find employees who earn a higher salary than their managers.

WITH e_pay AS (SELECT employee_name as e_name, salary as e_salary, manager_name
	       FROM works NATURAL LEFT OUTER JOIN manages)
SELECT distinct employee_name
FROM e_pay LEFT OUTER JOIN works ON manager_name = employee_name
WHERE e_salary > works.salary;


set echo on
REM ****** QUESTION SIX ********
set echo off
/* Exercise 3.17(b,c) page 110. Consider the relational database of Figure 3.20. Give an expression in SQL for each of the following queries. */

// b - Give all managers of “First Bank Corporation” a 10 percent raise.
UPDATE works
SET salary=salary*1.1
WHERE employee_name IN (SELECT manager_name
			FROM manages)
	and company_name = 'First Bank Corporation';

SELECT *
FROM works;

// c - Delete all tuples in the works relation for employees of “Small Bank Corporation”.
DELETE FROM works
WHERE company_name = 'Small Bank Corporation';

SELECT *
FROM works;