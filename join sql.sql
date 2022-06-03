use training;
select * from sales;
SELECT 
    sales, region, s.id, r.id
FROM
    sales s
        INNER JOIN
    regions r ON s.id = r.id;
    
    #left join
    SELECT 
    s.id, r.id, sales, region
FROM
    sales s
        LEFT JOIN
    regions r ON s.id = r.id;
    
#classwork
    
    SELECT 
    first_name, d.department, e.department, division
FROM
    employees e
        left JOIN
    departments d ON e.department = d.department;
    
    #old way of joining
    SELECT 
    first_name, d.department, e.department, division
FROM
    employees e, departments d
	where
	e.department = d.department;
    
    #cw2
    SELECT 
    first_name, last_name, e.department, division, gender, salary
FROM
    employees e left join departments d
	on
	e.department = d.department
    where gender = 'f' and salary > 180000;
    
    select * from employees;
    SELECT 
    first_name, last_name surname, emp_id, email, state, region
FROM
    employees e left join states s
	on
	state_id = state_code
    where region = 'south east';
    
    SELECT 
    first_name, last_name, gender, salary, e.department, division, state
FROM
    employees e left join departments d
	on
	e.department = d.department
    left join states on state_id = state_code;
    
    SELECT 
    count(first_name), region, division
FROM
    employees e left join departments d
	on
	e.department = d.department
    left join states on state_id = state_code
    group by region, division;
    
     SELECT DISTINCT
    department
FROM
    employees;
    
    SELECT 
    first_name, last_name, salary, e.department, state, hire_date
FROM
    employees e left join departments d
	on
	e.department = d.department
    left join states on state_id = state_code
    order by hire_date limit 3;
    
    #or
    SELECT 
    first_name, last_name, salary, e.department, state, hire_date
FROM
    employees e left join states on state_id = state_code
    where hire_date = (select max(hire_date) from employees);
    
    SELECT 
    first_name, email, division, e.department, region, hire_date
FROM
employees e left join departments d
	on
	e.department = d.department
    left join states on state_id = state_code
    where email is null and region like 'north%';
    
    
    select * from employees
    
    
    
    