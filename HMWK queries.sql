--HMWK Question #1
SELECT employees.emp_no,last_name,first_name,gender,salary FROM employees
LEFT JOIN salaries
ON salaries.emp_no = employees.emp_no;

--HMWK Question #2
SELECT * FROM employees WHERE DATE_PART('year', hire_date)=1986;

--HMWK Question #3 
SELECT dept_manager.dept_no, dept_name, employees.emp_no, last_name, first_name, from_date, to_date 
FROM dept_manager
LEFT JOIN dept
ON dept.dept_no = dept_manager.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_manager.emp_no;

--HMWK Question #4
SELECT employees.emp_no, last_name, first_name, dept_name 
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN dept
ON dept.dept_no = dept_emp.dept_no;

--HMWK Question #5
SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--HMWK Question #6
SELECT employees.emp_no,last_name, first_name, dept_name
FROM employees
LEFT JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN dept
ON dept.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales';

--HMWK Question #7
SELECT employees.emp_no,last_name, first_name, dept_name
FROM employees
LEFT JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN dept
ON dept.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales' 
OR dept_name = 'Development';

--HMWK Question #8
SELECT last_name, COUNT(last_name) 
FROM employees
GROUP BY employees.last_name
ORDER BY count DESC;

