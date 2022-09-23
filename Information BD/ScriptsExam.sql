
--a. Consultar el nombre y salario del empleado con mayor salario. 
SELECT e.first_name + ' ' + e.last_name AS 'Name',s.salary FROM employees e 
INNER JOIN salaries s ON e.emp_no = s.emp_no
WHERE  s.salary = (SELECT MAX(salary) FROM salaries)

--b. Consultar los departamentos y para cada uno incluir la suma de los salarios de los empleados de ese departamento. 
SELECT d.dept_name AS 'Department',SUM(s.salary) AS 'Salaries by department' FROM dept_emp de
INNER JOIN employees e ON de.emp_no = e.emp_no
INNER JOIN salaries s ON e.emp_no = s.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no   
GROUP BY d.dept_name
ORDER BY SUM(s.salary) DESC

--c.Consultar para cada empleado, todos sus datos y además el número de empleados que han nacido el mismo día. 
SELECT e.first_name,e.last_name,
	   CASE e.gender
			WHEN 0 THEN 'Female'
			WHEN 1 THEN 'Male' 
			ELSE 'indefinite' END AS 'Gender',
	   e.birth_date,e.hire_date,e.code_emp,e.user_emp,e.cellphone,e.telephone,e.email,e.authorized_store,
	   e.authorized_orders,e.mail_user_access,t.type_contact_name,p.position_name,s.salary,d.dept_name,
	   (SELECT COUNT(birth_date) AS 'Count' FROM employees ee 
			   WHERE e.birth_date = ee.birth_date 
			   GROUP BY (birth_date)) AS 'born on the same day' 
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
INNER JOIN positions p ON e.position_id = p.position_Id
INNER JOIN typeContact t ON e.type_contact_id = t.type_contact_id
ORDER BY birth_date DESC

---------------------------------------------------------------

SELECT birth_date,COUNT(birth_date) AS 'Count'
FROM employees 
GROUP BY (birth_date)
ORDER BY COUNT(birth_date) DESC


--d. Consultar para cada empleado, todos sus datos, el número de empleados que han nacido el mismo día,
--una columna con el número de empleados que nacieron el día antes y otra con los que nacieron el día después. 
SELECT e.first_name,e.last_name,
	   CASE e.gender
			WHEN 0 THEN 'Female'
			WHEN 1 THEN 'Male' 
			ELSE 'indefinite' END AS 'Gender',
	   e.birth_date,e.hire_date,e.code_emp,e.user_emp,e.cellphone,e.telephone,e.email,e.authorized_store,
	   e.authorized_orders,e.mail_user_access,t.type_contact_name,p.position_name,s.salary,d.dept_name,
	   (SELECT COUNT(birth_date) FROM employees ee 
			   WHERE e.birth_date = ee.birth_date 
			   GROUP BY (birth_date)) AS 'born on the same day',
	   IsNull((SELECT COUNT(birth_date) FROM employees ee 
			   WHERE e.birth_date = DATEADD(DAY,1,ee.birth_date)
			   GROUP BY (birth_date)),0) AS 'Before',
	    IsNull((SELECT COUNT(birth_date) FROM employees ee 
			   WHERE e.birth_date = DATEADD(DAY,-1,ee.birth_date)
			   GROUP BY (birth_date)),0) AS 'After'
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
INNER JOIN positions p ON e.position_id = p.position_Id
INNER JOIN typeContact t ON e.type_contact_id = t.type_contact_id
ORDER BY birth_date DESC