use training;

#subquery
SELECT 
    first_name, salary
FROM
    training.employees
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employees);
    
    #correlated subquery        
	SELECT 
    first_name, salary
FROM
    employees e1
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employees e2
        WHERE
            e2.department = e1.department);
            
            #boolean expression
            
            SELECT 
    first_name, last_name, gender, department, (gender = 'F')
FROM
    employees;
    
    SELECT 
    first_name, last_name, salary, department, (salary > 210000)
FROM
    employees;
    
    #conditional
    SELECT 
    first_name,
    last_name,
    gender,
    department,
    IF(gender = 'F', 'woman', 'man') AS sex
FROM
    employees;
    
    #case statement
    SELECT 
    first_name, last_name, gender, department, 
    case
    when gender = 'F' then 'woman'
    when gender = 'M' then 'man'
    else 
    # else is optional
    end as sex
FROM
    employees;
    
    SELECT 
    first_name, last_name, gender, department, 
    case
    when salary > 200000 then 'executive' 
    when salary between 100000 and 200000 then 'paid well'
    when salary < 100000 then 'not paid well'
    end as category
FROM
    employees;
    
    SELECT 
    first_name, last_name, department, 
    case
    when salary > 200000 then 'executive' 
    when salary between 100000 and 200000 then 'paid well'
    when salary < 100000 then 'not paid well'
    end as category
FROM
    employees;
    
    SELECT 
    first_name, last_name, salary, department,  
    case when salary = minimumsalary then 'lowest salary' 
    when salary = maxsalary then 'highest salary' end as status 
    from
   (SELECT 
    first_name, last_name, salary, department,
(SELECT min(salary) FROM employees e2 where e2.department = e1.department) as minimumsalary,
(SELECT max(salary) FROM employees e2 where e2.department = e1.department) as maxsalary from employees e1)a
where salary = minimumsalary or salary = maxsalary
order by department;
         
        
    
    
    