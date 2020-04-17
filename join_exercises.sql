USE employees;

#write a query that shows each department along with the name of the current manager for that department.
# Department Name    | Department Manager
#  --------------------+--------------------
#   Customer Service   | Yuchang Weedman
#   Development        | Leon DasSarma
#   Finance            | Isamu Legleitner
#   Human Resources    | Karsten Sigstam
#   Marketing          | Vishwani Minakawa
#   Production         | Oscar Ghazalie
#   Quality Management | Dung Pesch
#   Research           | Hilary Kambil
#   Sales              | Hauke Zhang
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
GROUP BY d.dept_name,CONCAT(e.first_name, ' ', e.last_name);

# Find the name of all departments currently managed by women.
# Department Name | Manager Name
# ----------------+-----------------
# Development     | Leon DasSarma
# Finance         | Isamu Legleitner
# Human Resources | Karsetn Sigstam
# Research        | Hilary Kambil
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name,' ', e.last_name) AS 'Manager Name'
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' and e.gender = 'F'
GROUP BY d.dept_name, CONCAT(e.first_name,' ', e.last_name);

# Find the current titles of employees currently working in the Customer Service department.
# Title              | Count
# -------------------+------
# Assistant Engineer |    68
# Engineer           |   627
# Manager            |     1
# Senior Engineer    |  1790
# Senior Staff       | 11268
# Staff              |  3574
# Technique Leader   |   241
SELECT t.title AS Title, COUNT(*) AS COUNT
FROM titles AS t
JOIN employees AS e ON t.emp_no = e.emp_no
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE t.to_date = '9999-01-01' AND d.dept_no = 'd009' AND de.to_date = '9999-01-01'
GROUP By t.title;

# Find the current salary of all current managers.
# Department Name    | Name              | Salary
# -------------------+-------------------+-------
# Customer Service   | Yuchang Weedman   |  58745
# Development        | Leon DasSarma     |  74510
# Finance            | Isamu Legleitner  |  83457
# Human Resources    | Karsten Sigstam   |  65400
# Marketing          | Vishwani Minakawa | 106491
# Production         | Oscar Ghazalie    |  56654
# Quality Management | Dung Pesch        |  72876
# Research           | Hilary Kambil     |  79393
# Sales              | Hauke Zhang       | 101987
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name,' ', e.last_name) AS 'Name', s.salary AS 'Salary'
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no
JOIN salaries AS s ON s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
GROUP BY d.dept_name, CONCAT(e.first_name,' ', e.last_name), s.salary;

# Bonus Find the names of all current employees, their department name, and their current manager's name.
#     240,124 Rows
#     Employee Name | Department Name  |  Manager Name
#     --------------|------------------|-----------------
#      Huan Lortz   | Customer Service | Yuchang Weedman
#
#      .....
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name',
    CONCAT(m.first_name, ' ', m.last_name) AS 'Manager Name'
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
    JOIN dept_manager AS dm On d.dept_no = dm.dept_no
    JOIN employees AS m ON dm.emp_no = m.emp_no
Where de.to_date = '9999-01-01' AND
      dm.to_date = '9999-01-01'
ORDER BY d.dept_name;