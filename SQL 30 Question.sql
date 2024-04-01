use employees; 





-- Retrieve all records from a table.
select *
from employees;

-- Retrieve specific columns from a table.
select first_name
from employees;

-- Retrieve distinct values from a column.
select distinct(gender)
from employees;

-- Filter records based on a condition using the WHERE clause.
select *
from employees
where gender = "m" ; 

-- Sort records in ascending order using the ORDER BY clause.
select *
from employees
where gender = "m"
order by first_name  ; 

-- Sort records in descending order.
select *
from employees
where gender = "m"
order by first_name desc ;

-- Limit the number of records returned using the LIMIT clause.
select *
from employees
limit 4;

-- Count the number of records in a table.
select  count(emp_no)
from employees;

-- Calculate the average value of a numeric column.
select avg(emp_no)
from employees;

-- Find the maximum value in a column.
select max(emp_no)
from employees;
-- Find the minimum value in a column.
select min(emp_no)
from employees;

-- Group records based on a column using the GROUP BY clause.
select last_name
from employees
group by last_name;

-- Filter grouped records using the HAVING clause.
select last_name
from employees
group by last_name
having last_name = "simmel";
-- =========================================================================
-- Join two or more tables using INNER JOIN.
select *
from employees
inner join dept
on employees.emp_no = dept.dept_id;
select * from employees;
select * from dept;

insert into dept values(10001,"kolkata");

-- =========================================================================

-- Perform a LEFT JOIN to retrieve all records from one table and matching records from another table.
-- Perform a RIGHT JOIN.
select *
from employees
right join dept
on employees.emp_no = dept.dept_id
limit 3;

-- Perform a FULL OUTER JOIN.
-- Use aliases for table names.
select *
from employees as e;

-- Use aliases for column names.
select emp_no as id ,birth_date, first_name, last_name,gender as g , hire_date
from employees;

-- Concatenate columns.
select concat(first_name ," : ", last_name) as first_last_name
from employees;

-- Perform arithmetic operations on columns.
select emp_no,emp_no+10 as ad
from employees;
-- =======================================================================

-- =======================================================================
-- Use the IN operator to filter records based on multiple values.
select *
from employees
where emp_no in (10001,10004,10008);

-- Use the BETWEEN operator to filter records within a range.
select *
from employees
where emp_no between 10008 and 10015 ;

-- Use the LIKE operator to perform pattern matching.
select *
from employees
where first_name like "%__m__%";
-- Use the CASE statement for conditional logic.

-- Use subqueries to retrieve data from another query's result.
-- Create and use temporary tables.
-- Use the UNION operator to combine the results of multiple SELECT statements.
select * from dept
where dept_id = 20 or dept_id =30
union all
select * from dept
where dept_id = 10001 or dept_id = 30;


-- Use the INTERSECT operator to retrieve common records from two SELECT statements.
select * from dept
where dept_id = 20 or dept_id =30
INTERSECT
select * from dept
where dept_id = 10001 or dept_id = 30;


-- Use the EXCEPT operator to retrieve records from the first SELECT statement that are not present in the second SELECT statement.
select * from dept
where dept_id = 10001 or dept_id =30 or dept_id=50
EXCEPT
select * from dept
where dept_id = 20 or dept_id = 30 or dept_id=40;