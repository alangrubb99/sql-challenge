SELECT
employee.emp_no, first_name,last_name,sex,salary
FROM
employee
JOIN salaries ON salaries.emp_no = employee.emp_no;

SELECT
first_name,last_name,hire_date
FROM
employee
WHERE
DATE_PART('Year',hire_date) = 1986;

SELECT
first_name,Last_name,departments.dept_no,departments.dept_name,employee.emp_no
FROM 
employee
JOIN dept_manager on dept_manager.emp_no = employee.emp_no
JOIN departments on dept_manager.dept_no = departments.dept_no;

SELECT
first_name,Last_name,departments.dept_no,departments.dept_name,employee.emp_no
FROM 
employee
JOIN dept_emp on dept_emp.emp_no = employee.emp_no
JOIN departments on dept_emp.dept_no = departments.dept_no;

SELECT
employee.emp_no, first_name,last_name,sex
FROM
employee
WHERE
first_name = 'Hercules' and LEFT (last_name, 1) = 'B';

SELECT
first_name,Last_name,employee.emp_no,departments.dept_name
FROM 
employee
JOIN dept_emp on dept_emp.emp_no = employee.emp_no
JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE
departments.dept_name = 'Sales';

SELECT
first_name,Last_name,employee.emp_no,departments.dept_name
FROM 
employee
JOIN dept_emp on dept_emp.emp_no = employee.emp_no
JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE
departments.dept_name = 'Sales' or departments.dept_name = 'Development';

SELECT last_name, COUNT (last_name)
FROM employee
GROUP BY last_name
ORDER BY COUNT (last_name) DESC;

