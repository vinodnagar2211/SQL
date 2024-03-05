use employees;


select * from employees;
select * from titles;

select* 
from  s.emp_no, first_name,title, hire_data from employees as a inner join



select min(hire_data) 
from employees as a inner join titles using (emp_no)
where title="Assistant Manager"and hire_date > 



you neet to get the full name of  sep thw and the hire data and the title wheer the of the user the manager

select concat(first_name) as full_name,titles,hire_date from employees 
inner join title using (emp_no


)
gehter all the emp_no first,last,full,(hire date) year of joining for all those employees 
who have who have been working currentlymanager and also  work fr another positon with the cmpany

 
select e.emp_no ,first_name,last_name,
CONCAT(e.first_name,' ' ,e.last_name) as full_name,
e.hire_data,YEAR(e.hire_data) as year_of_joining
from employees e
JOIN  titles t ON e.emp_no = t.emp.no
WHERE title = "Manager"
AND title IN (SELECT emp);



select emp_no,titles,from_date,YEAR (from_data)as year from titles as manager

select mgr.emp_no, mrg.title,other.emp_no,oter.title
from titles mgr,titles as other 
whree 
where title = "Manager";