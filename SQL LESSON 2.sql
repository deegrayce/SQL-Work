USE training;

SELECT 
    *
FROM
    employees;
    
    SELECT 
    *
FROM
    employees
WHERE
    salary > 200000
        AND (department = 'music'
        OR department = 'games');
        
         SELECT 
    first_name, gender, department
FROM
    employees
WHERE
         department = 'clothing'
        OR department = 'computers'
        OR department = 'sports'
        OR department = 'toys'
        OR department = 'pharmacy'
        OR department = 'camping & fishing';
        
         SELECT 
    first_name, gender, department
FROM
    employees
WHERE
    department IN ('clothing' , 'computers',
        'sports',
        'toys',
        'pharmacy',
        'camping & fishing');
        
        SELECT 
    first_name, gender, department
FROM
    employees
WHERE
    email LIKE '@gmail.com';
    
    
    #names that begin with ade
    SELECT 
    first_name, gender, department
FROM
    employees
    where last_name like 'ade%';
    
    # salary range
    SELECT 
    first_name, gender, salary
FROM
    employees
WHERE
    salary BETWEEN 120000 AND 150000;
   
   #fordates between a period
    SELECT 
    first_name, gender, hire_date
FROM
    employees
WHERE
    hire_date BETWEEN '2019-06-01' AND '2021-10-23';
    
    SELECT 
    first_name, middle_name, email, gender
FROM
    employees
WHERE
    middle_name IS NULL;
    
    # select distinct returns distinct values
    SELECT DISTINCT
    gender
FROM
    employees;
   
   #aggregrate/ counting total rows
    SELECT 
    COUNT(*)
FROM
    employees;
    
    SELECT 
    COUNT(middle_name)
FROM
    employees;
    
    #can also get AVG and MIN  salary
    SELECT 
    MAX(salary)
FROM
    employees;
    
   SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
    
    SELECT DISTINCT
    first_name
FROM
    employees;
    
    
   SELECT 
    first_name, middle_name, email, gender, salary
FROM
    employees
WHERE
    salary > 200000
ORDER BY salary;

SELECT 
    first_name, last_name, email, gender, salary
FROM
    employees
ORDER BY first_name , last_name;

SELECT 
    first_name, COUNT(*)
FROM
    employees
GROUP BY first_name;


SELECT first_name, email
 FROM
    employees
WHERE
    salary > 150000 and department= 'tools' and gender = 'f';
    
    SELECT 
    first_name, hire_date,
FROM
    employees
WHERE
    salary > 180000
        AND department = 'sports'
        AND gender = 'm';

# you can use >< in place of between but it wont include/count the specified dates used for the range
SELECT 
    last_name as "surname", first_name, hire_date
FROM
    employees
WHERE
    hire_date BETWEEN '2010-01-01' AND '2015-01-01';
    
    SELECT 
    *
FROM
    employees
WHERE
    gender = 'm'
        AND department = 'automotive'
        AND salary > 80000
        AND salary < 150000
        OR (gender = 'f' AND department = 'toys');
        
#anytime you use an aggregate function you have to use group by 
# in place of * you can use the column name i.e emp_id in place of *
SELECT 
    department, COUNT(*) AS 'no of employee'
FROM
    employees
GROUP BY department;

SELECT 
    department, COUNT(department) AS 'no of employee'
FROM
    employees
GROUP BY department
having count(department) > 80;

SELECT 
    first_name, COUNT(first_name)
FROM
    employees
    where hire_date > '2019-01-01'
GROUP BY first_name
HAVING COUNT(first_name) > 5;

SELECT 
    department, ROUND(avg salary), min_salary
FROM
    employees;